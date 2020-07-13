<template>
    <div class="col-md-3">
        <div class="card">
            <div class="card-header bg-white">
                <h6 class="text-center">Today COVID-19 Cases</h6>
            </div>
            <div class="card-body">
                <div class="card border-danger mb-3 text-center bg-danger">
                    <div class="card-header">
                        <a class="collapsed card-link text-center" data-toggle="collapse" href="#">
                            <h6 class="card-title text-light">Today Confirmed Cases</h6>
                            <h4 class="card-subtitle mb-2 text-white"><b>{{today_counts.confirm_cases}}</b></h4>
                        </a>
                    </div>
                </div>
                <div class="card border-primary mb-3 text-center bg-primary">
                    <div class="card-header">
                        <a class="collapsed card-link text-center" data-toggle="collapse" href="#">
                            <h6 class="card-title text-light">Today Death Cases</h6>
                            <h4 class="card-subtitle mb-2 text-white"><b>{{today_counts.deaths}}</b></h4>
                        </a>
                    </div>
                </div>
                <div class="card border-success mb-3 text-center bg-success">
                    <div class="card-header">
                        <a class="collapsed card-link text-center" data-toggle="collapse" href="#">
                            <h6 class="card-title text-light">Today Recovered</h6>
                            <h4 class="card-subtitle mb-2 text-white"><b>{{today_counts.recovered}}</b></h4>
                        </a>
                    </div>
                </div>
                <div class="card border-warning mb-3 text-center bg-warning">
                    <div class="card-header">
                        <a class="collapsed card-link text-center" data-toggle="collapse" href="#">
                            <h6 class="card-title text-light">Today Suspect Cases</h6>
                            <h4 class="card-subtitle mb-2 text-white"><b>{{today_counts.suspected}}</b></h4>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>


</template>

<script>
    export default {
        name: "Products",
        data() {
            return {
                today_counts: []

            }
        },
        created() {
            this.fetchCountData();
            console.log(this.today_counts)
        },
        methods: {
            fetchCountData() {
                fetch('api/today-counts')
                    .then(res => res.json())
                    .then(res => {
                        this.today_counts = res.today_counts;
                    }).catch(err => console.log(err));
            }
        }
    }
</script>

<style scoped>

</style>