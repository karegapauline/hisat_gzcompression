process COMPRESS {
    label 'compress'
    publishDir params.outdir
	
    input:
    tuple val(name), path(trimmed_reads)
	
    output:
    tuple val(name), path("${name}*.trimmed.fastq.gz"), emit: sample2_compressed
	
script:
    // real_zip = trimCmd("readlink ${trimmed_reads}").text.trim()
    """
    gzip -f ${trimmed_reads}

    """

    
   }
   // gzip ${trimmed_reads[1]} gzip -f ${trimmed_reads[1]}