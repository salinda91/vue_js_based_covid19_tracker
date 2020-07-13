<template>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header bg-white">
                <h6 class="text-center">COVID-19 Cases</h6>
            </div>
            <div class="card-body">
                <line-chart :chart-data="datacollection"></line-chart>
            </div>
        </div>
    </div>
</template>

<script>
    import LineChart from './LineChart.js'

    export default {
        components: {
            LineChart
        },
        data () {
            return {
                datacollection: null
            }
        },
        mounted () {
            this.fillData()
        },
        methods: {
            fillData () {
                fetch('api/all-cases')
                    .then(res => res.json())
                    .then(res => {
                        this.datacollection = res;
                    }).catch(err => console.log(err));

            }
        }
    }
</script>

<style>

</style>