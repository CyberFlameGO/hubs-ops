terragrunt = {
  terraform {
    source = "git::git@github.com:mozilla/mr-ops.git//terraform/modules/ret"
  }

  include {
    path = "${find_in_parent_folders()}"
  }

  dependencies {
    paths = ["../vpc", "../base", "../bastion", "../hab", "../ret-db"]
  }
}

ret_instance_type = "m3.medium"
ret_http_port = 4000
janus_wss_port = 443
janus_admin_port = 7000
janus_rtp_port_from = 20000
janus_rtp_port_to = 60000
min_ret_servers = 2
max_ret_servers = 2