resource "aws_instance" "web1" {
    ami = "${lookup(var.AMI, var.AWS_REGION)}"
    instance_type = "t2.micro"

    subnet_id = "${aws_subnet.prod-subnet-public-1.id}"
    vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
    key_name = "${aws_key_pair.ireland-region-key-pair.id}"

    tags = {
        Name: "My VPC Demo 2"
    }
}
// Sends your public key to the instance
resource "aws_key_pair" "ireland-region-key-pair" {
    key_name = "ireland-region-key-pair"
    public_key = "${file(var.PUBLIC_KEY_PATH)}"
}