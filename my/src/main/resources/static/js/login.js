var vm = new Vue({
    el:'#app',
    data:{
        id:'',
        password:'',
    },
  methods: {
      fun: function () {
        if ((this.id!=null&&this.password!=null)&&(this.id!=''&&this.password!='')){
            axios({
                method: 'post',
                url: '/loginCheck',
                data: {
                    "id": this.id,
                    "password": this.password
                },
                transformRequest: [function (data) {
                    let ret = "";
                    for (let it in data) {
                        ret += encodeURIComponent(it) + '=' + encodeURIComponent(data[it]) + '&'
                    }
                    return ret;
                }],
                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    if(response.data.username!=null){
                        location.href="/main"
                    }else {
                        alert("用户名或密码错误")
                    }
                })
                .catch(function (error) {
                    console.log(error);
                });
        }else{
            alert("用户名或密码不为空")
        }
      }
  }
})