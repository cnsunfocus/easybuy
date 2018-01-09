export default {
  path: '/purchase',
  component: require('@/views/purchase/'),
  children: [{
    path: 'hello',
    component (resolve) {
      require(['@/views/purchase/hello'], resolve)
    }
  }]
}
