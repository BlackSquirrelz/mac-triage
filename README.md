# macOS - Triage Application

## Table of Contents

- [macOS - Triage Application](#macos---triage-application)
  - [Table of Contents](#table-of-contents)
  - [Background](#background)
  - [Usecases](#usecases)
    - [Manage Case](#manage-case)
    - [Create Triage](#create-triage)
    - [Analyse Target System](#analyse-target-system)
    - [Create Report](#create-report)
  - [References and Inspiration](#references-and-inspiration)
---

## Background

This is an application in development to create, manage, analyse and report on macOS Digital Forensics and Incident Reponse Cases.
It is a replacement for my previous tool NIDABA, since python is no longer natively installed on macOS Systems. Therefore porting, respectively newly creating an application in Swift.

---

## Usecases


The following usecase diagramm illustrates the intended usage of the application.

![UseCaseDiagram](media/Usecase_Diagram.png)

### Manage Case

The analyst can create, delete and view a case / investigation.

- View Case
- Delete Case
- Create Case

### Create Triage

- Acquire Evidence
- Process Evidence

### Analyse Target System

### Create Report

## References and Inspiration

1. [OSX Collector](https://github.com/Yelp/osxcollector)
2. [Aftermath](https://github.com/jamf/aftermath)
3. [macOS-Triage](https://github.com/nrvana/macOS-triage)
4. [Truetree](https://github.com/themittenmac/TrueTree)
5. [macOS-Locations Scraper](https://github.com/mac4n6/Mac-Locations-Scraper)
6. [OSX-Auditor](https://github.com/jipegit/OSXAuditor)