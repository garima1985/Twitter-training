# The name of this view in Looker is "Us Cities"
view: us_cities {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `datasetdemo1.us_cities`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Area Land Meters" in Explore.

  dimension: area_land_meters {
    type: number
    sql: ${TABLE}.area_land_meters ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_area_land_meters {
    type: sum
    sql: ${area_land_meters} ;;
  }

  measure: average_area_land_meters {
    type: average
    sql: ${area_land_meters} ;;
  }

  dimension: area_type {
    type: string
    sql: ${TABLE}.area_type ;;
  }

  dimension: area_water_meters {
    type: number
    sql: ${TABLE}.area_water_meters ;;
  }

  dimension: city_geom {
    type: string
    sql: ${TABLE}.city_geom ;;
  }

  dimension: feature_class_code {
    type: string
    sql: ${TABLE}.feature_class_code ;;
  }

  dimension: functional_status {
    type: string
    sql: ${TABLE}.functional_status ;;
  }

  dimension: geo_code {
    type: number
    sql: ${TABLE}.geo_code ;;
  }

  dimension: int_point_lat {
    type: number
    sql: ${TABLE}.int_point_lat ;;
  }

  dimension: int_point_lon {
    type: number
    sql: ${TABLE}.int_point_lon ;;
  }

  dimension: lsad_code {
    type: number
    sql: ${TABLE}.lsad_code ;;
  }

  dimension: lsad_name {
    type: string
    sql: ${TABLE}.lsad_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: urban_area_code {
    type: number
    sql: ${TABLE}.urban_area_code ;;
  }

  measure: count {
    type: count
    drill_fields: [lsad_name, name]
  }
}
