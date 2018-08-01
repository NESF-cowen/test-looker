connection: "snowflake_nesf_dev_db"

# include all the views
include: "*.view"

datagroup: chris_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: chris_test_default_datagroup

explore: v_top_rollingaua {}
