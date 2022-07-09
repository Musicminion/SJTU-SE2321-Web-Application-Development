## SJTU-SE2321-Web-Application-Development 

> 互联网应用开发技术 2022春
### 答辩回忆录

| 答辩次数 | 第一次 [3.26] | 第二次 [5.15] | 第三次 [6.19] | 第四次  [7.9] | 平时作业 10次 | 总分 |
| :------: | :----: | :----: | :----: | :----: | :------: | :--: |
|   分数   |   15   |   20   |   22   |   30   |   10    | 97  |
|   满分   |   15   |   20   |   25   |   30   |    10    | 100  |
|   时间线  |   约第五周  |   约第十一周   |  约第十八周   |  约第二十一周     | 约每周都有  | 答辩结束之后  |

### 课程仓库列表
**注意：** 以下仓库仅供学习和参考，禁止用来盈利或者其他商业途径，同时请勿转载！

**注意：** 复制、下载下面表格仓库的任何内容即代表您同意使用规约（参见[仓库使用规约](#仓库使用规约)）

|      说明      |                           链接地址                           |
| :------------: | ---------------------------------------------------------- |
| 后端代码 |   [【后端代码】：](https://github.com/Musicminion/eBookBackend)  https://github.com/Musicminion/eBookBackend  |
| 前端代码 |       [【前端代码】：](https://github.com/Musicminion/EBook)  https://github.com/Musicminion/EBook       |
|   数据库脚本  | [【SQL文件】：](https://github.com/Musicminion/SJTU-SE2321-Web-Application-Development/tree/main/sql)  https://github.com/Musicminion/SJTU-SE2321-Web-Application-Development/tree/main/sql|
|      课件      | [【PPT】：](https://github.com/Musicminion/SJTU-SE2321-Web-Application-Development-PPT)  https://github.com/Musicminion/SJTU-SE2321-Web-Application-Development-PPT |
|    课程样例    | [【Example】：](https://github.com/Musicminion/SJTU-SE2321-Web-Application-Development-Example)  https://github.com/Musicminion/SJTU-SE2321-Web-Application-Development-Example |

### 仓库使用规约
1. 任何情况下，不允许在其他网站（例如CSDN、Gitee等第三方网站）转载，
2. 任何情况下，特别针对课件PPT，不允许转载/转售第三方，例如百度文库
3. 禁止商用销售，并且下载的内容仅允许自己代码学习使用
4. 不允许直接抄袭本开源的代码，并且作为个人的作品提交为自己的大作业
5. 不要在此仓库的基础上进行二次开发，然后作为商业用途
6. 有任何Bug、互联网课程答辩方面的疑问，功能不会实现的，欢迎提出 issues，看到了一定会回复的！
7. 想问我助教的评分习惯之类的，请邮件[看我主页sjtu邮箱]，如果我遇到过我一定会比较详细的回复一下需要注意的地方


### 功能难点
#### 理解`state` 和 `props`
- state是状态，表示在页面可能会动态刷新的元素
- props是只读的属性，一般是来源于父组件，然后呈现出来的死数据
- 写组件代码之前，一定要思考是用state，还是props，比如书籍展示卡片就是props，页面计价器就是state
- 函数`setState`是设置状态，这个过程是异步的，也就是说这个函数后面，不能利用 `this.state.XXX` 获取刚才更新的`state`数据
- 关于把一个 js 对象或者数组作为 state，或者把state里面的一个数组增加元素、删除元素，可以自行百度

#### 前端后端连通
- 前端是React，把所有的请求汇集到Ajax的POST或者Get请求
- 后端的`@RequsetMaping`负责监听端点API
- 基本参考老师下发的bookstore-All样例，里面的登录样例，然后就能跑通前后端
- 顺便说一句，跑通前后端连通的第一次真的很惊喜！

#### 数据库设计
- 请一定想好数据库的设计，在后端代码开始之前，比如某一列的名字、类型
- 否则一旦想要修改某一列的名字或者属性，会很麻烦！

#### 前端计价器
- 例如想要在前端实现一个计价器，用户调整数量，总价对应变化，这是个考验state的绝佳位置！
- 在购物车结算页面，有不同商品的行，调整不同行的商品数量，对应的小计、总计金额会变，这个是考验父子组件通讯、state的绝佳位置！

#### 前端表格
- 表格是个好东西，用户管理要用表格，商品查询要用表格
- 表格数据要来自后端，具体参考Antdesign的官方API
- 表格写会了，基本上大作业80-90%就会了
- 分页值得一学，虽然不要求，有前端和后端分页的区别可能会考


#### 后端下订单
- 下订单的时候，涉及到的操作是很多的
- 书籍的销量、库存要变
- 订单表格、订单项目表格对应的数据需要改变
- 后端下单前要检查库存，库存够再下单
- 整体作为一个事务提交，便于回滚

#### 后端统计
- 考验你SQL基本功的时候到了
- 首先筛选时间，要指定某个时间段的范围
- 然后 GroupBy 用户，sum(XXX)进行求和，统计金额
- 不会级联的话，就用服务层进行汇总数据
- 基本上把第一个统计热销榜做出来了，后面的功能就非常简单了
- 时间戳Date类型的比较可能需要多调试一下，具体可以参考我的代码




