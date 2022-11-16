# Forensics Cyber-Security Lab Assignments

These labs conduct the investigation of a case entitled “Football Leaks”.

### Scenario presentation

Charles Daniels is an investigative reporter that is famous for breaking controversial stories on sports. Recently, he made a post on his blog claiming that Levy Fran Velucci has been involved in a fraudulent transaction of James Santos, a rising star football player that was transferred to Red Hawks Football Club in the last season. Mr. Velucci has been the president of the club for nearly 20 years. In his blog post, Mr. Daniels claims to have documentation in his possession proving that Mr. Velucci has financially damaged the club in said transfer by diverting 3 million euro worth into his bank account. This blog post caught the attention of a prosecuting attorney who has been investigating Mr. Velucci for several years now as a suspect for several crimes of embezzlement against the club. In an attempt to follow this new lead, the prosecuting attorney obtained a warrant and instructed the police authorities to search Mr. Daniels’ household to look for potentially incriminating documents and tracing their source. The police authorities followed suit and started an investigation. You were hired to lead the forensic task force looking for relevant digital evidence.

## Authors

Group 12

90074 Francisco Romão

92513 Mafalda Ferreira

## Requirements 

Kali Linux distribution on a forensically sound virtual machine.

## First Lab Assignment

The first assignment is focused on performing file forensics and steganalysis, requiring the examination of a small number of files.

**Keywords**: Evidence acquisition. File forensics. Steganography. Memory analysis.

The original files are located in `artifacts.zip` and `extracted.zip` contains the extracted evidences.

## Second Lab Assignment

The second assignment is focused on analyzing hard disk images to obtain suspicious documents and develop skills in file forensic techniques and tools.

**Keywords**: Storage and volume analysis. File carving. Evidence in operating systems.

The hard disk images are located in `artifacts.zip` and `extracted.zip` contains the extracted evidences.
The folder `tools` contains all the tools used to extract some obfuscated evidences.

## Third Lab Assignment

The third assignment requires the investigation of the computer network of the Red Hawks FC. This examination aims to finally assess the authenticity of the documents found in Charles Daniels’ possession and determine if (and how) they have leaked from the Red Hawks FC. To perform this task, you will need to analyze some network traces that can can be downloaded from the course website.

**Keywords**: Network traffic analysis. Email and web forensics. Timeline of suspicious events.

The zip file `artifacts.zip` contains the `sslkeylog`. However, due to its heavy size, the zip file is missing the provided captured packets analyzed in wireshark.
The extracted evidences are contains in `attachments.zip`.
