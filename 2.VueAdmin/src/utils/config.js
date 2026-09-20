const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/cl35481172/client/h5/index.html'
        }
    },
    getProjectName(){
        return {
            projectName: "蜀味道江湖餐饮管理系统小程序"
        } 
    }
}
export default config
