view: v_top_rollingaua {
  sql_table_name: EXEC.V_TOP_ROLLINGAUA ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: eb5_aua {
    type: number
    sql: ${TABLE}."EB5AUA" ;;
  }

  dimension: mth {
    type: string
    sql: ${TABLE}."MTH" ;;
  }

  dimension_group: mth_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."MTH_END_DATE" ;;
  }

  dimension: mth_num {
    type: number
    sql: ${TABLE}."MTH_NUM" ;;
  }

  dimension: peaua {
    type: number
    sql: ${TABLE}."PEAUA" ;;
  }

  dimension: planaua {
    type: number
    sql: ${TABLE}."PLANAUA" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
