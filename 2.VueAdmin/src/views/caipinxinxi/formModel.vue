<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="24">
						<el-form-item label="菜品名称" prop="caipinmingcheng">
							<el-input class="list_inp" v-model="form.caipinmingcheng" placeholder="菜品名称"
								 type="text" 								:readonly="!isAdd||disabledForm.caipinmingcheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="菜品图片" prop="caipintupian">
							<uploads
								:disabled="!isAdd||disabledForm.caipintupian?true:false"
								action="file/upload" 
								tip="请上传菜品图片" 
								:limit="3" 
								style="width: 100%;text-align: left;"
								:fileUrls="form.caipintupian?form.caipintupian:''" 
								@change="caipintupianUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="菜品类型" prop="caipinleixing">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.caipinleixing?true:false"
								v-model="form.caipinleixing" 
								placeholder="请选择菜品类型"
								>
								<el-option v-for="(item,index) in caipinleixingLists" :label="item"
									:value="item"
									>
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="商家账号" prop="shangjiazhanghao">
							<el-input class="list_inp" v-model="form.shangjiazhanghao" placeholder="商家账号"
								 type="text" 								:readonly="!isAdd||disabledForm.shangjiazhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="商家店名" prop="shangjiadianming">
							<el-input class="list_inp" v-model="form.shangjiadianming" placeholder="商家店名"
								 type="text" 								:readonly="!isAdd||disabledForm.shangjiadianming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="商家地址" prop="shangjiadizhi">
							<el-input class="list_inp" v-model="form.shangjiadizhi" placeholder="商家地址"
								 type="text" 								:readonly="!isAdd||disabledForm.shangjiadizhi?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="价格" prop="price">
							<el-input class="list_inp" v-model.number="form.price" placeholder="价格"
								 type="number" 								:readonly="!isAdd||disabledForm.price?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="菜品详情" prop="caipinxiangqing">
							<el-input v-model="form.caipinxiangqing" placeholder="菜品详情" type="textarea"
							:readonly="!isAdd||disabledForm.caipinxiangqing?true:false"
							/>
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'caipinxinxi'
	const formName = '菜品信息'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		caipinmingcheng : false,
		caipintupian : false,
		caipinleixing : false,
		caipinxiangqing : false,
		shangjiazhanghao : false,
		shangjiadianming : false,
		shangjiadizhi : false,
		thumbsupnum : false,
		crazilynum : false,
		storeupnum : false,
		clicktime : false,
		price : false,
		clicknum : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		caipinmingcheng: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		caipintupian: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		caipinleixing: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		caipinxiangqing: [
		],
		shangjiazhanghao: [
		],
		shangjiadianming: [
		],
		shangjiadizhi: [
		],
		thumbsupnum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		crazilynum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		storeupnum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		clicktime: [
		],
		price: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		clicknum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//菜品图片上传回调
	const caipintupianUploadSuccess=(e)=>{
		form.value.caipintupian = e
	}
	//菜品类型列表
	const caipinleixingLists = ref([])
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			caipinmingcheng: '',
			caipintupian: '',
			caipinleixing: '',
			caipinxiangqing: '',
			shangjiazhanghao: '',
			shangjiadianming: '',
			shangjiadizhi: '',
			thumbsupnum: '0',
			crazilynum: '0',
			storeupnum: '0',
			clicktime: '',
			price: '0',
			clicknum: '0',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='caipinmingcheng'){
					form.value.caipinmingcheng = row[x];
					disabledForm.value.caipinmingcheng = true;
					continue;
				}
				if(x=='caipintupian'){
					form.value.caipintupian = row[x];
					disabledForm.value.caipintupian = true;
					continue;
				}
				if(x=='caipinleixing'){
					form.value.caipinleixing = row[x];
					disabledForm.value.caipinleixing = true;
					continue;
				}
				if(x=='caipinxiangqing'){
					form.value.caipinxiangqing = row[x];
					disabledForm.value.caipinxiangqing = true;
					continue;
				}
				if(x=='shangjiazhanghao'){
					form.value.shangjiazhanghao = row[x];
					disabledForm.value.shangjiazhanghao = true;
					continue;
				}
				if(x=='shangjiadianming'){
					form.value.shangjiadianming = row[x];
					disabledForm.value.shangjiadianming = true;
					continue;
				}
				if(x=='shangjiadizhi'){
					form.value.shangjiadizhi = row[x];
					disabledForm.value.shangjiadizhi = true;
					continue;
				}
				if(x=='thumbsupnum'){
					form.value.thumbsupnum = row[x];
					disabledForm.value.thumbsupnum = true;
					continue;
				}
				if(x=='crazilynum'){
					form.value.crazilynum = row[x];
					disabledForm.value.crazilynum = true;
					continue;
				}
				if(x=='storeupnum'){
					form.value.storeupnum = row[x];
					disabledForm.value.storeupnum = true;
					continue;
				}
				if(x=='clicktime'){
					form.value.clicktime = row[x];
					disabledForm.value.clicktime = true;
					continue;
				}
				if(x=='price'){
					form.value.price = row[x];
					disabledForm.value.price = true;
					continue;
				}
				if(x=='clicknum'){
					form.value.clicknum = row[x];
					disabledForm.value.clicknum = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			form.value.thumbsupnum='0'
			form.value.crazilynum='0'
			form.value.storeupnum='0'
			form.value.price='0'
			form.value.clicknum='0'
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('shangjiazhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.shangjiazhanghao = json.shangjiazhanghao
				disabledForm.value.shangjiazhanghao = true;
			}
			if(json.hasOwnProperty('shangjiadianming')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.shangjiadianming = json.shangjiadianming
				disabledForm.value.shangjiadianming = true;
			}
			if(json.hasOwnProperty('shangjiadizhi')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.shangjiadizhi = json.shangjiadizhi
				disabledForm.value.shangjiadizhi = true;
			}
		})
		context?.$http({
			url: `option/caipinleixing/caipinleixing`,
			method: 'get'
		}).then(res=>{
			caipinleixingLists.value = res.data.data
		})
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		if(form.value.caipintupian!=null) {
			form.value.caipintupian = form.value.caipintupian.replace(new RegExp(context?.$config.url,"g"),"");
		}
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									formVisible.value = false
									emit('formModelChange')
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							formVisible.value = false
							emit('formModelChange')
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border-radius: 6px;
		padding: 30px;
		background: #fff;
		// form item
		:deep(.el-form-item) {
			margin: 0 0 20px 0;
			display: flex;
			justify-content: space-between;
			//label
			.el-form-item__label {
			 background: transparent;
			 display: block;
			 width: 90px;
			 text-align: right;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 160px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 1px solid #ddd;
					padding: 0 10px;
					width: 300px;
					line-height: 36px;
					box-sizing: border-box;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				// 下拉框
				.list_sel {
					border: 1px solid #ddd;
					border-radius: 0;
					padding: 0 10px;
					width: 400px;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
							.el-input__wrapper{
								border: none;
								box-shadow: none;
								background: none;
								border-radius: 0;
								height: 100%;
								padding: 0;
							}
							.is-focus {
								box-shadow: none !important;
							}
						}
					}
				}
				// 长文本
				.el-textarea__inner {
					border: 1px solid #ddd;
					border-radius: 0;
					padding: 12px;
					outline: none;
					color: #333;
					width: 400px;
					font-size: 14px;
					min-height: 120px;
				}
				//图片上传样式
				.el-upload-list  {
					//提示语
					.el-upload__tip {
						margin: 7px 0 0;
						color: #999;
						display: flex;
						font-size: 12px;
						justify-content: flex-start;
						align-items: center;
					}
					//外部盒子
					.el-upload--picture-card {
						border: 1px dashed rgba(75,137,243,1);
						cursor: pointer;
						background-color: #fff;
						border-radius: 8px;
						width: 100px;
						line-height: 110px;
						text-align: center;
						height: 100px;
						//图标
						.el-icon{
							color: rgba(75,137,243,1);
							font-size: 32px;
						}
					}
					.el-upload-list__item {
						border: 1px dashed rgba(75,137,243,1);
						cursor: pointer;
						background-color: #fff;
						border-radius: 8px;
						width: 100px;
						line-height: 110px;
						text-align: center;
						height: 100px;
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			box-shadow: inset 0 0 10px 0 rgba(0, 0, 0, 0.30);
			margin: 0 10px 0 0;
			outline: none;
			color: #333;
			background: linear-gradient(0deg, rgba(255,255,255,1) 0%, rgba(227,225,224,1) 100%, rgba(255,255,255,1) 100%);
			width: auto;
			font-size: 14px;
			height: 32px;
		}
		.formModel_cancel:hover {
			background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(227,225,224,1) 100%, rgba(255,255,255,1) 100%);
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			box-shadow: inset 0 4px 10px 0 rgba(0,0,0,.3);
			margin: 0 10px 0 0;
			outline: none;
			color: #fff;
			background: linear-gradient(0deg, rgba(67,125,205,1) 0%, rgba(30,103,183,1) 100%, rgba(227,225,224,1) 100%);
			width: auto;
			font-size: 14px;
			height: 32px;
		}
		.formModel_confirm:hover {
			background: linear-gradient(180deg, rgba(67,125,205,1) 0%, rgba(30,103,183,1) 100%, rgba(227,225,224,1) 100%);
		}
	}
</style>