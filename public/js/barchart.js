$(function () {
        $('#container').highcharts({
            chart: {
                type: 'bar'
            },
            title: {
                text: 'Survey Answers by Questions'
            },
            subtitle: {
                text: 'Survey Back Gorilla'
            },
            xAxis: {
                categories: ['Survey 1', 'Survey 2', 'Survey 3', 'Survey 4', 'Survey 5'],
                title: {
                    text: null
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Answered Questions',
                    align: 'high'
                },
                labels: {
                    overflow: 'justify'
                }
            },
            tooltip: {
                valueSuffix: ' response'
            },
            plotOptions: {
                bar: {
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'top',
                x: -40,
                y: 100,
                floating: true,
                borderWidth: 1,
                backgroundColor: '#FFFFFF',
                shadow: true
            },
            credits: {
                enabled: false
            },
            series: [{
                name: 'Answer 1',
                data: [107, 31, 35, 20, 2]
            }, {
                name: 'Answer 2',
                data: [133, 156, 94, 40, 6]
            }, {
                name: 'Answer 3',
                data: [73, 91, 40, 73, 34]
            }]
        });
    });