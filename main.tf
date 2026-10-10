resource "auth0_prompt_screen_partials" "prompt_screen_partials" {
  for_each = var.prompt_screen_partials

  prompt_type = each.value.prompt_type

  dynamic "screen_partials" {
    for_each = each.value.screen_partials != null ? each.value.screen_partials : []
    content {
      insertion_points {
        form_content            = screen_partials.value.insertion_points.form_content
        form_content_end        = screen_partials.value.insertion_points.form_content_end
        form_content_start      = screen_partials.value.insertion_points.form_content_start
        form_footer_end         = screen_partials.value.insertion_points.form_footer_end
        form_footer_start       = screen_partials.value.insertion_points.form_footer_start
        secondary_actions_end   = screen_partials.value.insertion_points.secondary_actions_end
        secondary_actions_start = screen_partials.value.insertion_points.secondary_actions_start
      }
      screen_name = screen_partials.value.screen_name
    }
  }
}

