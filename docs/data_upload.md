# OVPrecision Data Upload


The uploading procedure consists of the following 5 steps which are explained in more detail below.


## 1. Create a pre-defined folder structure on your local computer

On your local computer, create the following nested folder structure, e.g., in Windows Explorer or Mac Finder.

> `<Sample-ID>/<Experiment-Date>/<Data-Stage>/`

In this structure:

-   **`<Sample-ID>`** is a placeholder for the unique identifier for each sample.

-   **`<Experiment-Date>`** is a placeholder for the date of the experiment in YYYYMMDD format, e.g., 20240131, as provided in the **Experiment Date** field in the metadata. For ctDNA and bkRNA-seq, it should correspond to the **Sequencing End Date** as provided in the metadata. **This date is important for data tracking so please double-check carefully!**

-   **`<Data-Stage>`** represents the processing stage. It can take the following values,
> `raw` (corresponding to experiment)  
> `derived` (corresponding to analysis)

Examples:

`myworkingdirectory/O-MABADAB/20250229/raw/`  
`myworkingdirectory/O-MABADAB/20250229/derived/`


## 2. Create metadata files

Up to 3 files describing the metadata must be provided per sample (described below). For each data type and stage, we provide an Excel template, which serves as a reference to illustrate the required structure and column headers. You are not required to use the templates directly, but the file you submit must **exactly match** their format.<br>

Each template includes a header row followed by two rows showing the expected data types and an example. These two rows should be removed in your submission, which should include only the header and one row with your actual data.

### 2.1. Sample Summary

For each sample that exists in LabKey, you must provide a file summarizing the steps run for the sample. This requirement applies even to poor quality samples that are not processed further. In this case, leave empty all columns that are not applicable, i.e. you do not need to fill in the columns on experiment and analysis. We will automatically assume that they also failed. Please refer to table 1 for information on how the file should be named and where it should be saved.

Table 1: QC metadata file specification

| Field         | Description                                                                                          |
|---------------|------------------------------------------------------------------------------------------------------|
| Template      | [QC_template.xlsx](https://docs.google.com/spreadsheets/d/1KoLBGn2FOFBTTOzx72GgrMRckuOxD1gm/edit?usp=sharing) |
| File format   | Tab-delimited text file (`.txt` or `.tsv`)                                                           |
| File name     | `<sample-ID>__QC_metadata.txt`<br><br>Please note the double underscore after the sample ID!         |
| File location | The file must be saved in the `<Sample-ID>/<Experiment-Date>/` directory<br>created in step 1, e.g.,<br>`myworkingdirectory/O-MABADAB/20250229/O-MABADAB__QC_metadata.txt` |
<hr>


### 2.2. Experiment and Analysis

For all samples for which an experiment and/or analysis was performed, additional metadata files must be provided separately for each step. This data will then be automatically imported into LabKey.

Table 2: Experiment metadata file specification

| Field         | Description                                                                                      |
|---------------|--------------------------------------------------------------------------------------------------|
| Template      | Please refer to Table 4                                                                          |
| File format   | Tab-delimited text file (`.txt` or `.tsv`)                                                       |
| File name     | `<sample-ID>__experiment_metadata.txt`<br><br>Please note the double underscore after the sample ID! |
| File location | The file must be saved in the corresponding experiment folder:<br>`<Sample-ID>/<Experiment-Date>/raw`<br>e.g., `myworkingdirectory/O-MABADAB/20250229/raw/O-MABADAB__experiment_metadata.txt` |
<hr>
<br>
Table 3: Analysis metadata file specification

| Field         | Description                                                                                      |
|---------------|--------------------------------------------------------------------------------------------------|
| Template      | Please refer to Table 4                                                                          |
| File format   | Tab-delimited text file (`.txt` or `.tsv`)                                                       |
| File name     | `<sample-ID>__analysis_metadata.txt`<br><br>Please note the double underscore after the sample ID! |
| File location | The file must be saved in the corresponding analysis folder:<br>`<Sample-ID>/<Experiment-Date>/derived`<br>e.g., `myworkingdirectory/O-MABADAB/20250229/derived/O-MABADAB__analysis_metadata.txt` |
<hr>
<br>
Table 4: Templates for the metadata file for different data types

| Technology             | Data Stage | Metadata Template                                                                 |
|------------------------|------------|------------------------------------------------------------------------------------|
| Apricot                | Raw        | <a href="https://docs.google.com/spreadsheets/d/1pbX869ZwaFPOGX1R3NB8r-ncWqeO_F-5/edit?usp=sharing" target="_blank" rel="noopener">apx_raw_template</a> |
|                        | Derived    | <a href="https://docs.google.com/spreadsheets/d/SoX-is0nclWVJl0UatwFAKjHYhi7sOcT/edit?usp=sharing" target="_blank" rel="noopener">apx_derived_template</a> |
| Bulk RNA-seq           | Raw        | <a href="https://docs.google.com/spreadsheets/d/1fC16LBMz2d4kCQn8KfnUdxrdrejDXlYS/edit?usp=sharing" target="_blank" rel="noopener">bkrna_raw_template</a> |
|                        | Derived    | <a href="https://docs.google.com/spreadsheets/d/1q06AVJpbzu0rTfBoEDLe8u7Y5ahxN46T/edit?usp=sharing" target="_blank" rel="noopener">bkrna_derived_template</a> |
| ctDNA                  | Raw        | <a href="https://docs.google.com/spreadsheets/d/1GvWyyjiX4wOC2GcO-4zGhaLMn5JzbpBf/edit?usp=sharing" target="_blank" rel="noopener">ctdna_raw_template</a> |
|                        | Derived    | <a href="https://docs.google.com/spreadsheets/d/15x90NgVdlhErJZj3BPUAghtW2CLZhQVH/edit?usp=sharing" target="_blank" rel="noopener">ctdna_derived_template</a> |
| Flow Cytometry         | Raw        | <a href="https://docs.google.com/spreadsheets/d/1xWIZHZCLNkv-SrDMPOE1nDCCdgCJ_vOx/edit?usp=sharing" target="_blank" rel="noopener">fc_raw_template</a> |
|                        | Derived    | <a href="https://docs.google.com/spreadsheets/d/1vJWGwcJ9Vl9lQV6-DXgveMLWMCV5C8br/edit?usp=sharing" target="_blank" rel="noopener">fc_derived_template</a> |
| IMC                    | Raw        | <a href="https://docs.google.com/spreadsheets/d/1_bkCOEKTxFsVUYHo5DTodyvJVeK9FHfs/edit?usp=sharing" target="_blank" rel="noopener">imc_raw_template</a> |
|                        | Derived    | <a href="https://docs.google.com/spreadsheets/d/1YPlKS5OeduMBPxjzP6qbFnqVEfvwkGPw/edit?usp=sharing" target="_blank" rel="noopener">imc_derived_template</a> |
| Pharmacoscopy          | Raw        | <a href="https://docs.google.com/spreadsheets/d/1dWfhEDzlaCzoY76_9EONib-rf9o2ADpk/edit?usp=sharing" target="_blank" rel="noopener">pc_raw_template</a> |
|                        | Derived    | <a href="https://docs.google.com/spreadsheets/d/1iijKxmlADP-7UjY5iwIsZxc3Ofnr97Y5/edit?usp=sharing" target="_blank" rel="noopener">pc_derived_template</a> |
| Targeted NGS (OCCA+)   | Raw        | <a href="https://docs.google.com/spreadsheets/d/1j8KhEIqmPhlbL_hGr44R1HgBN6cz9FOp/edit?usp=sharing" target="_blank" rel="noopener">occa_raw_template</a> |
|                        | Derived    | <a href="https://docs.google.com/spreadsheets/d/1AHmwWVgfPt9ju4IBv9f_9Fq9ofq-GjxR/edit?usp=sharing" target="_blank" rel="noopener">occa_derived_template</a> |

<hr>



## 3. Name data files using pre-defined format

Filenames must follow this structure:

> `<Sample-ID>-<optional info>__<fixed name>.<ext>`

The section before the **double underscore** starts with the OVPrecision sample ID and may include any additional information separated from the sample ID by a dash. The section after the double underscore is a fixed, standard name and extension that defines the file type and must be consistent across all samples. 

For example:

`O-MABADAB-my_sample_id1.my_run_id1__01.tiff`  
`O-MABADAB__multiqc_report.html`


## 4. Calculate md5sums

md5sums allow us to ensure that the files were not corrupted during the transfer from your local machine to LeoMed. Therefore, you need to provide md5sums for all files that you upload.

For detailed instructions on calculating md5sums using a convenient script, refer to [this guide](./md5sums.md). Using the script is optional, and you are free to choose an alternative method if you prefer. You can submit either a single md5sum file that contains checksums for all files in the folder, or provide a separate md5sum file for each individual file.

After step 4, your data directories (raw and/or derived) will contain your data files, a metadata file and one or multiple files with md5sums. For example:

```
raw/
  <sample-ID>-<any name>__01.tiff
  <sample-ID>-<any name>__02.tiff
  <sample-ID>__experiment_metadata.txt
  checksums.md5
```

## 5. Upload files to LeoMed

We now have a local folder structure that could look, e.g., like this:
```
O-MABADAB/
    20240131/
        O-MABADAB__QC_metadata.txt
        raw/
            O-MABADAB__L001_R1.fastq.gz
            O-MABADAB__L001_R2.fastq.gz
            checksums.md5
            O-MABADAB__experiment_metadata.txt
        derived/
            O-MABADAB__multiqc_report.html
            checksums.md5
            O-MABADAB__analysis_metadata.txt
```


**ETH members need to be connected to the ETH network via VPN** before starting the upload. External users must make sure they are using an IP
address that was allow-listed during the onboarding process.

Instructions are provided for Linux and Mac users only. For Windows users, we highly recommend installing the Windows Subsystem for Linux (WSL), which then enables you to follow the same steps. Please find more details [here](./wsl.md). [Contact us](mailto:irene.keller@sdsc.ethz.ch) in case this is not a viable option for you.



### Initial Configuration

Before you upload data for the first time via the command line (Mac/Linux), you need to go through the following configuration step.
This needs to be done only once.

Add the following lines to the file ~/.ssh/config on your local computer. If this folder and/or file does not exist, you need to create it.

```
# biomed tenant
Host jump-biomed <jumphost-name>
HostName <jumphost-name>
IdentityFile <path-to-your-private-key-file>
User <username>
Port 22

Host biomed <login-node-name>
HostName <login-node-name>
User <username>
IdentityFile <path-to-your-private-key-file>
IdentitiesOnly yes
ProxyJump jump-biomed
```

The placeholders indicated by `<>` need to be replaced by actual values specific to your system.  

-   **`<username>`**, **`<jumphost-name>`** and **`<login-node-name>`** are in the email you received from LeoMed support during the onboarding process. This email includes a command structured as shown below, which shows the actual values to be used for each placeholder:  
`ssh -J <username>@<jumphost-name> -l <username> <login-node-name>`  
-   **`<path-to-your-private-key-file>`** is the path to the file containing your private ssh key. When you requested access to LeoMed, you had to generate a public-private key pair, and you shared the public key with LeoMed support. Here, you need to provide the path to the matching private key file.

Once this initial setup is complete, you can use the `rsync` commands in the next section, or log in to LeoMed as `ssh biomed`. 



### Data Upload

From the command-line interface, navigate to the working directory where you created your main folder in step 1.

```
cd <working directory>
# for example:
cd /home/myprojects/ovprecision/imc
```

From the command-line interface, run the following command to copy the content of your local folder to your remote folder. Note that there
should be **NO forward slash ("/")** after the local folder name. All required nested
folders will be automatically created on LeoMed.

```
rsync -avzPR <local-data-folder> biomed:/cluster/work/tumorp/ovprecision/data-drop/<technology>/
```

The `<technology>` placeholder should be replaced by one of:  

-   `apx`  
-   `bkrna`  
-   `ctdna`  
-   `fc`  
-   `imc`  
-   `pcy`  
-   `occa+`   

For example:  
`rsync -avzPR O-MABADAB/20250229 biomed:/cluster/work/tumorp/ovprecision/data-drop/imc/`
