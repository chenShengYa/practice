# Redux

## Actions

定义了每个动作，描述发生了什么，调用store.dispatch()来提交状态改变state

## Reducers

定义了每一个action动作对应对状态的操作，并将结果反馈给store


# React-Redux

## Connect

调用connect，从store的中取得连接的组件需要的参数

### mapStateToProps

mapStateToProps作为concect的第一个参数，是用来从store中选择一部分组件所需要的data以props的形式传递给组件，常以mapState简写来表示

* 代替store.subscribe,每当订阅的参数在store中发生变化时调用
* 如果你不想订阅store中的任何参数，返回null或者undefined作为mapStateToProps的结果返回
* 传递给Connect。注意mapStateToProps返回的值应该是普通对象(plain object)

#### 两个参数：state，ownProps(可选)

* state参数的值是整个Redux store，等同于Redux里调用store.getState()的结果
* ownProps参数的值是组件定义使用的时候，在组件上传递的props
* 两者在参数函数定义时如果用不到ownProps可选参数，就不要添加上去，store里被state订阅的参数如果发生不同会mapStateToProps被调用，如果添加了第二个参数，在组件props发生变化时mapStateToProps也会同时被调用
