# Define the database connection to be used for this model.
connection: "looker_private_demo"

# include all the views
include: "/views/**/*.view.lkml"
include: "//hs_core/models/order_items.explore"
include: "//hs_core/models/datagroups"
include: "//hs_core/models/value_formats"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

explore: logistics_order_items {
  extends: [order_items]
  view_name: order_items
  join: distribution_centers {
    sql_on: ${inventory_items.product_distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}
