output "prompt_screen_partials_id" {
  description = "Map of id values across all prompt_screen_partials, keyed the same as var.prompt_screen_partials"
  value       = { for k, v in auth0_prompt_screen_partials.prompt_screen_partials : k => v.id }
}
output "prompt_screen_partials_prompt_type" {
  description = "Map of prompt_type values across all prompt_screen_partials, keyed the same as var.prompt_screen_partials"
  value       = { for k, v in auth0_prompt_screen_partials.prompt_screen_partials : k => v.prompt_type }
}
output "prompt_screen_partials_screen_partials" {
  description = "Map of screen_partials values across all prompt_screen_partials, keyed the same as var.prompt_screen_partials"
  value       = { for k, v in auth0_prompt_screen_partials.prompt_screen_partials : k => v.screen_partials }
}

