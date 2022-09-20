#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FLAIR_DIFFEXP } from '../../../../modules/flair/diffexp/main.nf'

workflow test_flair_diffexp {
    
    input = file(params.test_data['sarscov2']['illumina']['test_single_end_bam'], checkIfExists: true)

    FLAIR_DIFFEXP ( input )
}
