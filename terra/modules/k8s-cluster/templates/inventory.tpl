[all]
%{ for name in all_names ~}
${name} ansible_host=${name_ip[name]} ansible_user=root
%{ endfor ~}

[control-plane]
%{ for name in control_plane_names ~}
${name} ansible_host=${name_ip[name]} ansible_user=root
%{ endfor ~}

[worker-node]
%{ for name in worker_names ~}
${name} ansible_host=${name_ip[name]} ansible_user=root
%{ endfor ~}

[nfs-server]
%{ for name in nfs_names ~}
${name} ansible_host=${name_ip[name]} ansible_user=root
%{ endfor ~}