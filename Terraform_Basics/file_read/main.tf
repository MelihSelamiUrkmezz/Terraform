data local_file datas {
  filename = "sample.txt"
}
output name {
  value       = data.local_file.datas.content
}

