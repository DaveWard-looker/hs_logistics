# The name of this view in Looker is "Us Stores"
view: us_stores {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `daveward-ps-dev.daveward_demodataset.us_stores` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Latitude" in Explore.

  dimension: latitude {
    hidden: yes
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  dimension: longitude {
    hidden: yes
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: location {
    type: location
    sql_longitude: ${longitude} ;;
    sql_latitude: ${latitude} ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: sq_ft {
    hidden: yes
    type: number
    sql: ${TABLE}.Sq_Ft ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: total_sq_ft {
    type: sum
    sql: ${sq_ft} ;;
    value_format_name: decimal_0
  }

}
