<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/8/17/017
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>


<body onload="xian();">

<div id="container" style="height: 60%"></div>

</body>

<script type="text/javascript" src="echarts.min.js"></script>
<script type="text/javascript" src="jquery-1.4.4.min.js"></script>

<script type="text/javascript">
    var ba;
    $.ajax({
        url : "test",
        async : false,
        type : "get",
        dataType : "json",
        success : function(data) {
         ba=data;
        }
    });

    function xian(){
        alert("为了测试jenkins 而改动,5分钟jenkins自动build,2")
        var dom = document.getElementById('container');
        var myChart = echarts.init(dom, null, {
            renderer: 'canvas',
            useDirtyRect: false
        });
        var option;

        option = {
            title: {
                text: 'Stacked Line'
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data: ['Email', 'Union Ads', 'Video Ads', 'Direct', 'Search Engine']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            toolbox: {
                feature: {
                    saveAsImage: {}
                }
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
            },
            yAxis: {
                type: 'value'
            },
            series: ba
        };
        if (option && typeof option === 'object') {
            myChart.setOption(option);
        }

        window.addEventListener('resize', myChart.resize);
    }
</script>
</html>
