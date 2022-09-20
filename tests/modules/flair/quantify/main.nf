#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FLAIR_QUANTIFY } from '../../../../modules/flair/quantify/main.nf'

workflow test_flair_quantify {
    
    input = file(params.test_data['sarscov2']['illumina']['test_single_end_bam'], checkIfExists: true)

    FLAIR_QUANTIFY ( input )
}
