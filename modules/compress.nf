process COMPRESS {
    label 'compress'
    publishDir params.outdir
	
    input:
    tuple val(name), path(trimmed_reads)
	
    output:
    tuple val(name), path("${name}_*.trimmed.fastqsanger.gz"), emit: sample2_compressed
	
    script:
    """
    gzip ${trimmed_reads[0]} > ${trimmed_reads[0]}.trimmed.fastqsanger.gz
    gzip ${trimmed_reads[1]} > ${trimmed_reads[1]}.trimmed.fastqsanger.gz
    
    
    """
    
   }
   