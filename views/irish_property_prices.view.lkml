# The name of this view in Looker is "Irish Property Prices"
view: irish_property_prices {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `daveward-ps-dev.daveward_demodataset.irish_property_prices` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_of_sale__dd_mm_yyyy_ {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_of_Sale__dd_mm_yyyy_ ;;
  }

  dimension: description_of_property {
    type: string
    sql: ${TABLE}.Description_of_Property ;;
  }

  dimension: eircode {
    type: string
    sql: ${TABLE}.Eircode ;;
  }

  dimension: not_full_market_price {
    type: yesno
    sql: ${TABLE}.Not_Full_Market_Price ;;
  }

  dimension: price______ {
    type: number
    sql: ${TABLE}.Price______ ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_price______ {
    type: sum
    sql: ${price______} ;;  }
  measure: average_price______ {
    type: average
    sql: ${price______} ;;  }

  dimension: property_size_description {
    type: string
    sql: ${TABLE}.Property_Size_Description ;;
  }

  dimension: vat_exclusive {
    type: yesno
    sql: ${TABLE}.VAT_Exclusive ;;
  }
  measure: count {
    type: count
  }
}
