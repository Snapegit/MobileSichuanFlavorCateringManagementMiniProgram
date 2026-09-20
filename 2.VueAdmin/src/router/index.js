	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import address from '@/views/address/list'
	import xuesheng from '@/views/xuesheng/list'
	import caipinleixing from '@/views/caipinleixing/list'
	import orders from '@/views/orders/list'
	import config from '@/views/config/list'
	import discusscaipinxinxi from '@/views/discusscaipinxinxi/list'
	import caipinxinxi from '@/views/caipinxinxi/list'
	import tousuxinxi from '@/views/tousuxinxi/list'
	import users from '@/views/users/list'
	import shangjia from '@/views/shangjia/list'
	import cart from '@/views/cart/list'
	import shangjiaRegister from '@/views/shangjia/register'
	import shangjiaCenter from '@/views/shangjia/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/shangjiaCenter',
			name: '商家个人中心',
			component: shangjiaCenter
		}
		,{
			path: '/address',
			name: '地址',
			component: address
		}
		,{
			path: '/xuesheng',
			name: '学生',
			component: xuesheng
		}
		,{
			path: '/caipinleixing',
			name: '菜品类型',
			component: caipinleixing
		}
		,{
			path: '/orders',
			name: '订单管理',
			component: orders
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/discusscaipinxinxi',
			name: '菜品信息评论',
			component: discusscaipinxinxi
		}
		,{
			path: '/caipinxinxi',
			name: '菜品信息',
			component: caipinxinxi
		}
		,{
			path: '/tousuxinxi',
			name: '投诉信息',
			component: tousuxinxi
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/shangjia',
			name: '商家',
			component: shangjia
		}
		,{
			path: '/cart',
			name: '购物车',
			component: cart
		}
		]
	},
	{
		path: '/shangjiaRegister',
		name: '商家注册',
		component: shangjiaRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
