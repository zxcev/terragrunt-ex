variable "env" {
  type = string
}

variable "filename" {
  type = string
}

variable "file_contents" {
  type = string
}

resource "local_file" "generated" {
  content  = var.file_contents
  filename = "${path.module}/${var.env}_${var.filename}.log"
}
