variable "prompt_screen_partials" {
  description = <<EOT
Map of prompt_screen_partials, attributes below
Required:
    - prompt_type
Optional:
    - screen_partials (block):
        - insertion_points (required, block):
            - form_content (optional)
            - form_content_end (optional)
            - form_content_start (optional)
            - form_footer_end (optional)
            - form_footer_start (optional)
            - secondary_actions_end (optional)
            - secondary_actions_start (optional)
        - screen_name (required)
EOT

  type = map(object({
    prompt_type = string
    screen_partials = optional(list(object({
      insertion_points = object({
        form_content            = optional(string)
        form_content_end        = optional(string)
        form_content_start      = optional(string)
        form_footer_end         = optional(string)
        form_footer_start       = optional(string)
        secondary_actions_end   = optional(string)
        secondary_actions_start = optional(string)
      })
      screen_name = string
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

