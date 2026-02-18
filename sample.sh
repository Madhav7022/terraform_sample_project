#!/bin/bash
# Update and install nginx
sudo apt update -y
sudo apt install -y nginx

# Create custom HTML content
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Terraform - Complete Professional Guide</title>

<link rel="icon" type="image/svg+xml" 
href='data:image/svg+xml;utf8,
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 256">
<polygon points="0,0 110,60 110,180 0,120" fill="%235C4EE5"/>
<polygon points="120,60 230,0 230,120 120,180" fill="%234C3ACF"/>
<polygon points="60,190 170,130 170,250 60,250" fill="%23623CE4"/>
</svg>'>

<style>



*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    scroll-behavior:smooth;
}

body{
    font-family: 'Segoe UI', sans-serif;
    background:#f4f6f9;
    color:#333;
}

.hero{
    background: linear-gradient(135deg,#5f2c82,#49a09d);
    color:white;
    padding:100px 20px;
    text-align:center;
}

.hero h1{
    font-size:60px;
    margin-bottom:20px;
}

.hero p{
    font-size:20px;
    max-width:800px;
    margin:auto;
}

nav{
    background:white;
    padding:15px;
    display:flex;
    justify-content:center;
    gap:30px;
    box-shadow:0 2px 5px rgba(0,0,0,0.1);
    position:sticky;
    top:0;
    z-index:1000;
}

nav a{
    text-decoration:none;
    color:#5f2c82;
    font-weight:bold;
}

nav a:hover{
    color:#49a09d;
}

section{
    padding:60px 20px;
    max-width:1100px;
    margin:auto;
}

section h2{
    text-align:center;
    margin-bottom:30px;
    color:#5f2c82;
    font-size:32px;
}

.cards{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:20px;
}

.card{
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
    transition:0.3s;
    cursor:pointer;
}

.card:hover{
    transform:translateY(-5px);
    background:#f0e9ff;
}

.detail-box{
    display:none;
    background:white;
    padding:25px;
    margin-top:25px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}

.code-box{
    background:#1e1e1e;
    color:#00ff90;
    padding:15px;
    border-radius:8px;
    font-family:monospace;
    margin-top:15px;
    overflow-x:auto;
}

.code-box pre{
    margin:0;
    white-space:pre-wrap;
}

.command-box{
    background:white;
    padding:20px;
    margin-bottom:20px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}

footer{
    background:#222;
    color:white;
    text-align:center;
    padding:20px;
    margin-top:40px;
}
</style>
</head>

<body>

<div class="hero">
    <h1>Terraform</h1>
    <p>Infrastructure as Code tool by HashiCorp that enables automated, consistent and scalable cloud infrastructure management.</p>
</div>

<nav>
    <a href="#about">About</a>
    <a href="#history">History</a>
    <a href="#features">Features</a>
    <a href="#workflow">Workflow</a>
    <a href="#sample">Sample Code</a>
    <a href="#commands">Commands</a>
</nav>

<section id="about">
    <h2>What is Terraform?</h2>
    <p>
        Terraform is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp.
        It allows engineers to define infrastructure in code using HashiCorp Configuration Language (HCL).
    </p>
</section>

<section id="history">
    <h2>History</h2>
    <p>
        Terraform was released in 2014 and became the industry standard tool for Infrastructure as Code and DevOps automation.
    </p>
</section>

<section id="features">
    <h2>Key Features</h2>
    <div class="cards">
        <div class="card">Infrastructure as Code</div>
        <div class="card">Multi-Cloud Support</div>
        <div class="card">Execution Plan</div>
        <div class="card">State Management</div>
    </div>
</section>

<section id="workflow">
    <h2>Terraform Workflow (Click Any Step)</h2>

    <div class="cards">
        <div class="card" onclick="showDetail('init')">1️⃣ terraform init</div>
        <div class="card" onclick="showDetail('plan')">2️⃣ terraform plan</div>
        <div class="card" onclick="showDetail('apply')">3️⃣ terraform apply</div>
        <div class="card" onclick="showDetail('destroy')">4️⃣ terraform destroy</div>
    </div>

    <div id="init" class="detail-box">
        <h3>terraform init</h3>
        <p><b>Purpose:</b> Initializes working directory.</p>
        <p><b>How it works:</b> Downloads providers and modules, configures backend.</p>
        <div class="code-box">terraform init</div>
    </div>

    <div id="plan" class="detail-box">
        <h3>terraform plan</h3>
        <p><b>Purpose:</b> Shows execution plan before applying.</p>
        <p><b>How it works:</b> Compares configuration with state file.</p>
        <div class="code-box">terraform plan</div>
    </div>

    <div id="apply" class="detail-box">
        <h3>terraform apply</h3>
        <p><b>Purpose:</b> Applies infrastructure changes.</p>
        <p><b>How it works:</b> Executes plan and provisions resources.</p>
        <div class="code-box">terraform apply</div>
    </div>

    <div id="destroy" class="detail-box">
        <h3>terraform destroy</h3>
        <p><b>Purpose:</b> Deletes managed infrastructure.</p>
        <div class="code-box">terraform destroy</div>
    </div>

</section>

<section id="sample">
    <h2>Sample Terraform Code (AWS EC2)</h2>

    <div class="code-box">
<pre><code>
# Configure AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create EC2 Instance
resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
</code></pre>
    </div>
</section>

<section id="commands">
    <h2>All Useful Terraform Commands (Command - Its Use)</h2>

    <div class="command-box"><h3>terraform validate – Validates configuration files for syntax errors</h3></div>
    <div class="command-box"><h3>terraform fmt – Formats Terraform files properly</h3></div>
    <div class="command-box"><h3>terraform show – Displays state or plan file details</h3></div>
    <div class="command-box"><h3>terraform output – Shows output variable values</h3></div>
    <div class="command-box"><h3>terraform refresh – Updates state file with real infrastructure</h3></div>
    <div class="command-box"><h3>terraform import – Imports existing infrastructure into state</h3></div>
    <div class="command-box"><h3>terraform taint – Marks resource for recreation</h3></div>
    <div class="command-box"><h3>terraform untaint – Removes taint from resource</h3></div>
    <div class="command-box"><h3>terraform state list – Lists resources in state file</h3></div>
    <div class="command-box"><h3>terraform state show – Shows detailed resource information</h3></div>
    <div class="command-box"><h3>terraform state rm – Removes resource from state file</h3></div>
    <div class="command-box"><h3>terraform workspace list – Lists available workspaces</h3></div>
    <div class="command-box"><h3>terraform workspace new – Creates new workspace</h3></div>
    <div class="command-box"><h3>terraform workspace select – Switches workspace</h3></div>
    <div class="command-box"><h3>terraform graph – Generates dependency graph</h3></div>
    <div class="command-box"><h3>terraform login – Authenticates with Terraform Cloud</h3></div>
    <div class="command-box"><h3>terraform version – Displays installed Terraform version</h3></div>

</section>

<footer>
Designed for DevOps Learners | Terraform Professional Overview
</footer>

<script>
function showDetail(id) {
    document.querySelectorAll('.detail-box').forEach(box => {
        box.style.display = "none";
    });
    document.getElementById(id).style.display = "block";
}
</script>

</body>
</html>  
EOF

# Ensure nginx is running
sudo systemctl enable nginx
sudo systemctl restart nginx
