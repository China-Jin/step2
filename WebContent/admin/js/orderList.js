/**
 * Created by xiwenlejian on 2016/9/1.
 */
$(document).ready( function () {
  var t = $('#order_table').DataTable( {
    /*导入数据*/
    "ajax": " ../data/array-order.txt",
    /*列设置*/
    "columnDefs": [ {
      /*给最后一列添加按钮*/
      "targets": -1,
      "data": null,
      "defaultContent": "<button name='del' class=\"btn btn-sm\"><i class=\"icon-remove\"></i> 删除</button><br/>" +
      		"<button name='edit' class=\"btn btn-sm\"><i class='icon-cog'></i>编辑</button><br/>",
      "width" : "100",
      "searchable": false,
      "orderable": false
    },{
      /*设置第一列不被搜索,不能排序 宽度为45px*/
      "searchable": false,
      "orderable": false,
      "width" : "45",
      "targets": 0
    }
    ],

    /*按第三列顺序排列*/
    "order": [[2, 'asc']],
    /*设置中文*/
    "language": {
      "lengthMenu": "每页 _MENU_ 条记录",
      "zeroRecords": "没有找到记录",
      /*"info": "第 _PAGE_ 页 ( 总共 _PAGES_ 页 )",*/
      "infoEmpty": "无记录",
      "infoFiltered": "(从 _MAX_ 条记录过滤)",
      "decimal":",",
      "thousands":".",
      "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
      "sZeroRecords": "没有检索到数据",
      "oPaginate": {
        "sFirst": "首页",
        "sPrevious": "前一页",
        "sNext": "后一页",
        "sLast": "尾页"
      },
      "sSearch": "搜索"
    }

  });
  /*索引递增*/
  t.on('order.dt search.dt',
    function() {
      t.column(0, {
        search: 'applied',
        order: 'applied'
      }).nodes().each(function(cell, i) {
        cell.innerHTML = i + 1;
      });
    }).draw();
  /*每行的删除按键*/
  $('#order_table tbody').on( 'click', "button[name='del']", function () {
    t.row($(this).parents('tr')).remove().draw( false );
  } );
  /*每行的编辑按钮*/
  $('#order_table tbody').on( 'click', "button[name='edit']", function () {
	  var orderID = t.cell( $(this).parents('tr'),1).data();
	  window.location ="../jsp/editProduct.jsp?orderID="+orderID;
  } );
  
  /*选中行*/
  $('#order_table tbody').on( 'click', 'tr', function () {
    $(this).toggleClass('selected');
  } );
  /*删除选中行*/
  $('#btn_delet').click( function () {
    $(".selected").remove().draw( false );
  } );
} );

