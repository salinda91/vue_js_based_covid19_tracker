<template>
    <div class="col-md-3">
        <div class="card">
            <div class="card-header bg-white">
                <h6 class="text-center">COVID-19 All Cases</h6>
            </div>
            <div class="card-body">
                <div class="card border-danger mb-3 text-center bg-danger">
                    <div class="card-header">
                        <a class="collapsed card-link text-center" data-toggle="collapse" href="#">
                            <h6 class="card-title text-light">Total Confirmed Cases</h6>
                            <h4 class="card-subtitle mb-2 text-white"><b>{{all_counts.all_confirm_cases}}</b></h4>
                        </a>
                    </div>
                </div>
                <div class="card border-primary mb-3 text-center bg-primary">
                    <div class="card-header">
                        <a class="collapsed card-link text-center" data-toggle="collapse" href="#">
                            <h6 class="card-title text-light">Total Death Cases</h6>
                            <h4 class="card-subtitle mb-2 text-white"><b>{{all_counts.all_deaths}}</b></h4>
                        </a>
                    </div>
                </div>
                <div class="card border-success mb-3 text-center bg-success">
                    <div class="card-header">
                        <a class="collapsed card-link text-center" data-toggle="collapse" href="#">
                            <h6 class="card-title text-light">Total Recovered</h6>
                            <h4 class="card-subtitle mb-2 text-white"><b>{{all_counts.all_recovered}}</b></h4>
                        </a>
                    </div>
                </div>
                <div class="card border-warning mb-3 text-center bg-warning">
                    <div class="card-header">
                        <a class="collapsed card-link text-center" data-toggle="collapse" href="#">
                            <h6 class="card-title text-light">Total Suspect Cases</h6>
                            <h4 class="card-subtitle mb-2 text-white"><b>{{all_counts.all_suspected}}</b></h4>
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
                all_counts: []

            }
        },
        created() {
            this.fetchCountData();
            console.log(this.all_counts)
        },
        methods: {
            fetchCountData() {
                fetch('api/all-counts')
                    .then(res => res.json())
                    .then(res => {
                        console.log(res.all_counts)
                        this.all_counts = res.all_counts;
                    }).catch(err => console.log(err));
            }
        }
    }
</script>

<style scoped>

</style>