# mongo_shell

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with mongo_shell](#setup)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)

## Overview

Puppet Module to install Mongo shell and Mongo tools. 

## Module Description

It supports installation of the above packages for version 3.2, 3.4 & 3.6



## Setup


## Usage

Install Mongo shell and tools for version 3.2
	
	class { 'mongo_shell': }


Install Mongo shell and tools for version 3.4

    class { 'mongo_shell::mongo34': }


Install Mongo shell and tools for version 3.6

    class { 'mongo_shell::mongo36': }


## Limitations

1. Tested on CentOS 7 only.
2. System doesn't support installation of 2 versions at the same time.
