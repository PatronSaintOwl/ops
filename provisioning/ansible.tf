# resource "local_file" "ansible_inventory" {
#   count = "${length(data.terraform_remote_state.ops.outputs.ip)}"
#   content = "[workers]\n ${join("\n",
#     formatlist(
#       "%s ansible_host=%s",
#       data.terraform_remote_state.ops.outputs.name,
#       data.terraform_remote_state.ops.outputs.ip
#     )
#   )}"
# }
