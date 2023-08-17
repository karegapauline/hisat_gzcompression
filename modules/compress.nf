process COMPRESS {
    label 'compress'
    publishDir params.outdir
	
    input:
    tuple val(name), path(trimmed_reads)
	
    output:
    tuple val(name), path("${name}*.trimmed.fastq.gz"), emit: sample2_compressed
	
script:
    real_zip = file(trimmed_reads).text
    """
    gzip -f ${real_zip}

    """

    
   }
   // gzip ${trimmed_reads[1]} gzip -f ${trimmed_reads[1]}