<%-- 
    Document   : data-table-import
    Created on : 3 de nov de 2021, 20:31:17
    Author     : Felype
--%>
<script>
    $(document).ready(function () {
        $('table').DataTable({
            dom: 'Bfrtip',
            // order: [[0,'asc']],
            order: [],
            // stateSave: true,
            colReorder: true,
            rowReorder:true,
            responsive: true,
            // select: true,
            language: {
                info: "Mostrando _START_ a _END_ de _TOTAL_ de registros",
                infoEmpty: " ",
                emptyTable: "Não existem registros para exibir",
                zeroRecords: "Nenhum registro encontrado para pesquisa",
                processing: "Processando...",
                paginate: {
                    previous: "Anterior",
                    next: "Próximo"
                },
                search: "Pesquisar na tabela",
                
            }
        });
    });
</script>