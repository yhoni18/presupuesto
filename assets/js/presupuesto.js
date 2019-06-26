var Presupuesto = function () {

    $.extend($.validator.defaults, {
        errorElement: 'span',
        errorPlacement: function(error, element) {
            var parentInput = element.closest('.input-group');
            error.css({ color: '#dd4b39' });
            if(parentInput.length > 0) {
                error.insertAfter(parentInput);
            } else {
                error.insertAfter(element);
            }
        },
        highlight: function ( element, errorClass, validClass ) {
            $(element)
                .closest(".form-group")
                .addClass("has-error");
        },
        unhighlight: function (element, errorClass, validClass) {
            $( element )
                .closest(".form-group")
                .removeClass( "has-error" );
        }
    });

    $('[role="submit"]').on('click', function() {
        var form = $(this).data('target')
        var callback = $(this).data('callback');
        if($(form).valid()) {
            eval(callback);
        }
    });

    $('#cod_prod').on('change', function() {
        var data = $(this).data();
        var option = $(this).find('option:selected');
        if(!$.isEmptyObject(data)) {
            $(data.target).val(option.attr(data.attr));
        }
    });

    var items = new Array();
    var currentElement;
    var options = {};
    var defaults = {
        modal: '#modal-presupuesto',
        table: '#tb-details'
    };
    var _table;
    var _modal;

    var init = function(opts) {
        options = $.extend(true, {}, defaults, opts);
        _modal = $(options.modal);
        _table = $(options.table);
    };

    var resetItem = function () {
        currentElement = {
            index: items.length,
        }
        
        var form = _modal.find('form');
        var id = $('#id_detalle', form);
        var producto = $('#cod_prod', form);
        var precio = $('#precio', form);
        var cantidad = $('#cantidad', form);
        var action = $('#action');

        producto.val('0').trigger('change');
        precio.val('');
        cantidad.val('');
        id.val(0);

        action.val('new');
    }

    var add =  function() {
        var form = _modal.find('form');
        var id = $('#id_detalle', form);
        var producto = $('#cod_prod', form);
        var precio = $('#precio', form);
        var cantidad = $('#cantidad', form);
        var action = $('#action');

        if(form.validate().errorList.length == 0) {
            if(action.val() == 'new') {
                
                currentElement = {
                    index: items.length,
                    id: id.val(),
                    codigo: producto.val(),
                    precio: precio.val(),
                    cantidad: cantidad.val(),
                    total: parseFloat(precio.val()) * parseFloat(cantidad.val()),
                };
    
                items.push(currentElement);
    
                var trElement = $('<tr>');
                trElement.attr('data-index', currentElement.index);
                var tdProducto = $('<td>', { text: producto.find('option:selected').text() });
                var tdPrecio = $('<td>',{ text: precio.val() });
                var tdCantidad = $('<td>',{ text: cantidad.val() });
                var tdAcciones = $('<td><button type="button" class="btn btn-sm btn-primary" onclick="Presupuesto.edit('+currentElement.index+')"><i class="fa fa-edit"></i></button><td>');
    
                trElement.append(tdProducto);
                trElement.append(tdPrecio);
                trElement.append(tdCantidad);
                trElement.append(tdAcciones);

                _table.find('tbody').append(trElement);

            } else {
                var temp = currentElement;
                currentElement = {
                    index: temp.index,
                    id: id.val(),
                    codigo: producto.val(),
                    precio: precio.val(),
                    cantidad: cantidad.val(),
                    total: parseFloat(precio.val()) * parseFloat(cantidad.val()),
                };
                items[temp.index] = currentElement;

                var trElement = $('tr[data-index="'+temp.index+'"]', _table);
                $('td:nth-child(1)', trElement).text(producto.find('option:selected').text());
                $('td:nth-child(2)', trElement).text(precio.val());
                $('td:nth-child(3)', trElement).text(cantidad.val());
            }
            
            producto.val('0').trigger('change');
            precio.val('');
            cantidad.val('');
            id.val(0);

            action.val('new');

            _modal.modal('hide');
        }

        var suma = 0;
        for (let index = 0; index < items.length; index++) {
            var element = items[index];
            suma += element.total;
        }
        $('#costo_materiales').val(suma.toFixed(2));
    };

    var edit = function(index) {
        _modal.modal('show');

        currentElement = items[index];
        var form = _modal.find('form');
        var id = $('#id_detalle', form);
        var producto = $('#cod_prod', form);
        var precio = $('#precio', form);
        var cantidad = $('#cantidad', form);

        id.val(currentElement.id);
        producto.val(currentElement.codigo).trigger('change');
        precio.val(currentElement.precio);
        cantidad.val(currentElement.cantidad);

        $('#action').val('edit');
    };

    var save =  function (url) {
        $.ajax({
            url: url,
            type: 'POST',
            dataType: 'json',
            data: {
                fechaEmision: $('#fecha_emision').val(),
                fechaRecepcion: $('#fecha_recepcion').val(),
                formaPago: $('#forma_pago').val(),
                lugarTrabajo: $('#lugar_trabajo').val(),
                estado: $('#estado').val(),
                costoManoObra: $('#costo_mano_obra').val(),
                costoMateriales: $('#costo_materiales').val(),
                costoTotal: $('#costo_total').val(),
                items: items,
            },
            success: function (response) {
                console.dir(response);
            }
        });
    };

    return {
        init: init,
        add:  add,
        edit: edit,
        reset: resetItem,
        save: save,
    };

}();