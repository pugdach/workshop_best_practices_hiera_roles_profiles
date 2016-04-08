class data_in_modules2 {
  $ntp_config = lookup('ntp::ntp_config', String, { merge =>  deep }, override_hierarchy)
}
