include: "//hs_core/views/order_items.view"
view: +order_items {

    measure: count {
      value_format_name: decimal_0
    }

  measure: count_of_orders {
    type: count_distinct
    sql: ${order_id}  ;;
}

measure: count_of_users {
  type: count_distinct
  sql: ${user_id} ;;
}

   }
