<template>
  <div id="purchase">
    <div id="header">
      <button id="by_product">产品</button>
      <button id="by_template">模板</button>
      <button id="by_component">零件</button>
    </div>
    <div id="content">
      <table>
        <tr v-for="item in items">
          <td>{{item.name}}</td>
          <td>{{item.count}}</td>
          <td>{{item.price}}</td>
          <td>{{item.total}}</td>
          <td>{{item.}}</td>
        </tr>
      </table>
    </div>
  </div>
</template>
<script>
export default {
  name: 'purchase'
}
</script>
