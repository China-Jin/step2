/*初始化图表*/
/*条形表*/
$(document).ready(function () {
  var ctx = document.getElementById("bar_chart");
  var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ["1月", "2月", "3月", "4月", "5月", "6月"],
      datasets: [{
        label: '数量',
        data: [12, 19, 3, 5, 2, 3],
        backgroundColor: [
          'rgba(255, 99, 132, 0.2)',
          'rgba(54, 162, 235, 0.2)',
          'rgba(255, 206, 86, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(255, 159, 64, 0.2)'
        ],
        borderColor: [
          'rgba(255,99,132,1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(255, 159, 64, 1)'
        ],
        borderWidth: 1
      }]
    },
    options: {
      responsive : true,
      /*添加标题*/
      title: {
        display: true,
        text: '2016年各月销售量'
      },
      /*条形图y轴从0开始*/
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero:true
          }
        }]
      }
    }
  });
  /*饼状表*/
  ctx = document.getElementById("pie_chart");
  myChart = new Chart(ctx, {
    type: 'pie',
    data : {
      labels: [
        "数码产品",
        "衣物",
        "食物"
      ],
      datasets: [
        {
          data: [300, 50, 100],
          backgroundColor: [
            "#FF6384",
            "#36A2EB",
            "#FFCE56"
          ],
          hoverBackgroundColor: [
            "#FF6384",
            "#36A2EB",
            "#FFCE56"
          ]
        }]
    },
    options: {
      responsive : true,
    }
  });
  /*线型表*/
  ctx = document.getElementById("line_chart");
  myChart = new Chart(ctx, {
    type: 'line',
    data : {
      labels: ["15日", "16日", "17日", "18日", "19日", "20日", "21日"],
      datasets: [
        {
          label: "部分8月销售数据",
          fill: false,
          lineTension: 0.1,
          backgroundColor: "rgba(75,192,192,0.4)",
          borderColor: "rgba(75,192,192,1)",
          borderCapStyle: 'butt',
          borderDash: [],
          borderDashOffset: 0.0,
          borderJoinStyle: 'miter',
          pointBorderColor: "rgba(75,192,192,1)",
          pointBackgroundColor: "#fff",
          pointBorderWidth: 1,
          pointHoverRadius: 5,
          pointHoverBackgroundColor: "rgba(75,192,192,1)",
          pointHoverBorderColor: "rgba(220,220,220,1)",
          pointHoverBorderWidth: 2,
          pointRadius: 1,
          pointHitRadius: 10,
          data: [65, 59, 80, 81, 56, 55, 40],
          spanGaps: false,
        }
      ]
    },
    options: {
      responsive : true,
    }
  });
})
