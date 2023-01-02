Pogigwasc gene prediction of Loxodes magnus genome
===================================================

Snakemake pipeline for gene prediction for Loxodes magnus, which has a genetic
code with context-dependent stop codons. Introns are first empirically
predicted with [Intronarrator](https://github.com/Swart-lab/Intronarrator) and
artifically removed to produce an "intronless" assembly, to run
[Pogigwasc](https://github.com/Swart-lab/pogigwasc) in `--no-intron` mode. This
is because the short lengths and unusual length distribution of introns in
Loxodes are difficult to model with the GHMM in Pogigwasc.

Data
----

Pipeline and scripts to generate the genome assembly are available from
[loxodes-assembly-workflow](https://github.com/Swart-lab/loxodes-assembly-workflow)
repository. Pipeline for the "intronless" assembly is available from
[loxodes-intronarrator-workflow](https://github.com/Swart-lab/loxodes-intronarrator-workflow).

This current pipeline was used for annotation of the MAC and MIC genomes; path
to reference assembly and names of output files were modified accordingly.

Paths to input files in the `workflow/config.yaml` file are local paths used in
the original data analysis. When re-running the pipeline, replace these with
the actual paths on your system.

Curated output from this annotation are included in the [archive of genome
annotations](https://doi.org/10.17617/3.9QTROS).


Running workflow
----------------

To run on a local server, use `./run_snakemake.sh` script, and add rule names
and additional parameters, e.g. `./run_snakemake.sh --dryrun`.
