<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<h2>Hello World!</h2>
<script type="text/javascript" src="jquery-1.4.4.min.js"></script>
<script src="echarts.min.js"></script>
<body style="height: 100%; margin: 0">
<div id="container" style="height: 100%"></div>
<%--如果下面这个srcipt写body上面就要 给body 一个onlead 函数,，--%>
<%--不然,js代码加载完了 ，div这个id 不存在，是没效果的--%>
<input type="button" class="type" value="柱状图">
<input type="button" class="type" value="圆圈图">
<script type="text/javascript">



    var dom = document.getElementById('container');
    var myChart = echarts.init(dom, null, {
        renderer: 'canvas',
        useDirtyRect: false
    });
    var app = {};

    var option;

    $(".type").click(function(){
        var a = $(this).val();
        if(a=="柱状图")
        {
            zhu();
        }
        else
        {
           yuan();
        }
    });




    function  zhu(){
    option = {
        xAxis: {
            type: 'category',
            data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                data: [120, 200, 150, 80, 70, 110, 130],
                type: 'bar',
                showBackground: true,
                backgroundStyle: {
                    color: 'rgba(180, 180, 180, 0.2)'
                }
            }
        ]
    };
        if (option && typeof option === 'object') {
            myChart.setOption(option);
        }
        window.addEventListener('resize', myChart.resize);
    }

    function  yuan(){
        option = {
            tooltip: {
                trigger: 'item'
            },
            legend: {
                top: '5%',
                left: 'center'
            },
            series: [
                {
                    name: 'Access From',
                    type: 'pie',
                    radius: ['40%', '70%'],
                    avoidLabelOverlap: false,
                    itemStyle: {
                        borderRadius: 10,
                        borderColor: '#fff',
                        borderWidth: 2
                    },
                    label: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        label: {
                            show: true,
                            fontSize: '40',
                            fontWeight: 'bold'
                        }
                    },
                    labelLine: {
                        show: false
                    },
                    data: [
                        { value: 1048, name: 'Search Engine' },
                        { value: 735, name: 'Direct' },
                        { value: 580, name: 'Email' },
                        { value: 484, name: 'Union Ads' },
                        { value: 300, name: 'Video Ads' }
                    ]
                }
            ]
        };
        if (option && typeof option === 'object') {
            myChart.setOption(option);
        }
        window.addEventListener('resize', myChart.resize);
    }
</script>
</body>
</html>
