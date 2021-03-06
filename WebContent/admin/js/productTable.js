/**
 * Created by xiwenlejian on 2016/9/2.
 */
$(document).ready( function () {
  var t = $('#product_table').DataTable( {
    /*导入数据*/
    "ajax": " ../data/array-product.txt",
    /*列设置*/
    "columnDefs": [ {
      /*给最后一列添加按钮*/
      "targets": -1,
      "data": null,
      "defaultContent": "<button name='delPro' class=\"btn btn-sm\"><i class=\"icon-remove\"></i>删除</button>"+
      					"<button name='editPro' class=\"btn btn-sm\"><i class='icon-cog'></i>编辑</button>"+
      					"<button name='seeCommon' class=\"btn btn-sm\"><i class='icon-cog'></i>查看评论</button>",
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
  $('#product_table tbody').on( 'click', "button[name='delPro']", function () {
	    t.row($(this).parents('tr')).remove().draw( false );
	  } );
  /*每行的编辑按键*/
  $('#product_table tbody').on( 'click', "button[name='editPro']", function () {
	  window.location ="../jsp/productDetails.jsp";
	  } );
  /*每行的查看评论按钮*/
  $('#product_table tbody').on( 'click', "button[name='seeCommon']", function () {
	  window.location ="../jsp/productCommon2.jsp";
	  } );
  /*选中行*/
  $('#product_table tbody').on( 'click', 'tr', function () {
    $(this).toggleClass('selected');
  } );
  /*删除选中行*/
  $('#btn_delet').click( function () {
    $(".selected").remove().draw( false );
  } );
} );

