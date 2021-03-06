# Redux

## Actions

定义了每个动作，描述发生了什么，调用store.dispatch()来提交状态改变state

## Reducers

定义了每一个action动作对应对状态的操作，并将结果反馈给store

### combineReducers

将多个拆分的reducer组合成一个并返回一个新的Reducer函数

## Store

整个应用的 state 被储存在一棵 object tree 中，并且这个 object tree 只存在于唯一一个 store 中。

Store 有以下职责：
* 维持应用的 state
* 通过 getState() 获取想要的state
* 通过 dispatch(action) 发起一个action来更新state
* 通过 subscribe(listener) 来注册监听器
* 通过 subscribe(listener) 返回的函数注销监听器

### 初始化state

主要有两种方法来初始化应用的 state 。

* 可以使用 createStore 方法中的第二个可选参数 preloadedState。
* 也可以在 reducer 中为 undefined 的 state 参数指定的默认的初始值。这个可以通过在 reducer 中添加一个明确的检查来完成，也可以使用 ES6 中默认参数的语法 function myReducer(state = someDefaultValue, action)

preloadedState默认值的优先级大于reducer默认值的优先级，如果指定了preloadedState，被指定的reducer默认初始值为preloadedState，没有被制定的reducer为undefined，则选择reducer设置的默认初始值

## 异步Action
由于dispatch action到reducer反馈给store这个过程是同步的，立刻返回结果
如果要异步就需要调用中间件来改变这样的过程，例如redux-thunk，redux-promise，redux-saga等

## Middleware
* middleware是指可以被嵌入在框架接收请求到产生响应过程之中的代码
* 中间件通过applyMiddleware，将所有的中间件加入到dispatch上，最终返回一个被中间件包装过的dispatch，并返回一个store的副本

# React-Redux

## Connect

调用connect，从store的中取得连接的组件需要的参数
如果用不到第一个参数，可以传null来代替

### mapStateToProps

mapStateToProps作为concect的第一个参数，是用来从store中选择一部分组件所需要的data以props的形式传递给组件，常以mapState简写来表示

* 代替store.subscribe,每当订阅的参数在store中发生变化时调用
* 如果你不想订阅store中的任何参数，返回null或者undefined作为mapStateToProps的结果返回
* 传递给Connect。注意mapStateToProps返回的值应该是普通对象(plain object)

#### 两个参数：state，ownProps(可选)

* state参数的值是整个Redux store，等同于Redux里调用store.getState()的结果
* ownProps参数的值是组件定义使用的时候，在组件上传递的props
* 两者在参数函数定义时如果用不到ownProps可选参数，就不要添加上去，store里被state订阅的参数如果发生不同会mapStateToProps被调用，如果添加了第二个参数，在组件props发生变化时mapStateToProps也会同时被调用

### mapDispatchToProps
mapDispatchToProps作为connect的第二个参数，是用于向store发起action
在React-Redux中你无需直接调用store.dispatch来发起一个action，connect会帮你处理好这些

* 默认在connect之后如果不传第二个参数mapDispatchToProps，被链接的组件会收到props.dispatch它可以用来调用action
* 如果将mapDispatchToProps作为第二个参数传给connect，它能创建能被调用的dispatch，并且作为props传递给被连接的组件

#### 两个参数：dispatch，ownProps(可选)

* dispatch作为mapDispatchToProps的第一个参数，一般情况下你可能会将它放在一个函数里并返回一个调用它的结果。另一种情况是返回一个普通对象，或者返回一个由action creator创建的结果
* ownProps作为mapDispatchToProps的第二个参数，可选意味着如果你添加了第二个参数，mapDispatchToProps也会像mapStateToProps一样，在自身props参数改变的时候调用函数。组件的值变化了可以将新的值传递给action并dispatch给store
* mapDispatchToProps函数的结果应该返回一个普通对象
* 在默认情况下，mapDispatchToProps有收到参数，那么返回的对象将使用不了默认的dispatch，如果你想使用的话，需要手动将dispatch添加到返回的对象上

#### bindActionCreators

为了解决手动包装函数太过于乏味，React-Redux提供了简单的办法

##### 两个参数：function or object，dispatch

* 第一个参数可以是funciton返回一个action  creator或者是object里面每一个字段都是一个action  creator
* bindActionCreators他能自动帮你传递每一个函数他组件的参数，所以你不需要每一个手动绑定






