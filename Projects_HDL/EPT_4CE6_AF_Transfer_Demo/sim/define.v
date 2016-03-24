/*****************************************************
 * $Workfile::                                       
 * $Author::	RJolly                                         
 * $Date::    	11/16/11                                       
 * $Revision::   	002                                    
 *
 * Copyright Stereovision, Inc. 2011
 *
 * This header files defines the input/output
 *	11/16/11	Created this file from Digital Video Recorder
		
******************************************************/
`ifndef _TOP_DEFINE
 `define _TOP_DEFINE

 // Commands
 `define TRIGGER_OUT_CMD                 3'h1
 `define TRANSFER_OUT_CMD                3'h2
 `define BLOCK_OUT_CMD                   3'h4
 `define TRANSFER_OUT_CONTINUATION_CMD   3'h6
 `define TRIGGER_IN_CMD                  3'h1
 `define TRANSFER_IN_CMD                 3'h2
 `define BLOCK_IN_CMD                    3'h4
 `define TRANSFER_IN_CONTINUATION_CMD    3'h6
 

 //Counter values for automated write byte to UART
`ifdef SIM
 `define TRIGGER_OUT_COUNT               26'hf000
`else
 `define TRIGGER_OUT_COUNT               26'h3ef1
`endif


`endif //  `ifndef _TOP_DEFINE

