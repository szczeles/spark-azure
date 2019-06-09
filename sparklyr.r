sdf_print_schema = function(df) {
    sdf_schema(df) %>% lapply(function(x) do.call(data_frame, x)) %>% bind_rows()
}

options(tibble.print_max = 50, tibble.print_min = 50)
