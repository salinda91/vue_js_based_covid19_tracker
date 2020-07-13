<template>
    <div>

        <div class="navbar navbar-dark bg-dark">
            <div class="navbar-inner ml-md-auto mr-md-auto">
                <router-link class="brand text-center" to="/">
                    <img src="/img/virus.png" alt="" class="width-100"><span class="navbar-brand m-3">COVID-19 Tracker</span>
                </router-link>
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>

            </div>
        </div>
        <br>
    </div>
</template>

<script>
    export default {
        name: "navbar"
    }
</script>

<style scoped>
    .width-100 {
        width: 100px;
    }
</style>