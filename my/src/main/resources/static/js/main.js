var vm = new Vue({
    el:'#app',
    data:{
        username:"",
        old_pwd:"",
        password:"",
        re_new_pwd:""
    },
    created:()=>{
        axios({
            method: 'get',
            url: '/name'
        })
            .then( (response) =>{
                vm.username = response.data.username;
            })
            .catch( (error) =>{
                console.log(error);
            })
    },

  methods: {
      fun:  () =>{
          if(vm.password==vm.re_new_pwd){
              axios({
                  method: 'get',
                  url: '/name'
              })
                  .then( (response) =>{
                      if(vm.old_pwd==response.data.password){
                          if(vm.password!=null&&vm.password!=''){
                              axios({
                                  method: 'post',
                                  url: '/updatePassord',
                                  data: {
                                      "id": response.data.id,
                                      "username":response.data.username,
                                      "password": vm.password
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
                                      alert("修改成功，请重新登录")
                                          location.href="/logout"
                                  })
                                  .catch(function (error) {
                                      console.log(error);
                                  });
                          }else {
                              alert("密码不可为空")
                          }
                      }else {
                          alert("旧密码不正确")
                      }
                  })
                  .catch( (error) =>{
                      console.log(error);
                  })
          }else{
              alert("新密码不一致")
          }
      }
  }
})
