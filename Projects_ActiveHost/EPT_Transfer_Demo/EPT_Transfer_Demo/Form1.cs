/*
 Copyright (c) 2013, Earth People Technology. All rights reserved.
 http://www.earthpeopletechnology.com

 Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission 
 notice appear in all copies.

 THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. 
 IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, 
 WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Threading;
using System.Runtime.InteropServices;
using System.Diagnostics;


namespace EPT_Transfer_Demo
{
    public partial class EPT_Transfer_Demo : Form
    {

        public EPT_Transfer_Demo()
        {
            InitializeComponent();

            btnBlkCompare8.Enabled = false;
            btnBlkCompare16.Enabled = false;
            btnTrigger1.Enabled = false;
            btnTrigger2.Enabled = false;
            btnTrigger3.Enabled = false;
            btnTrigger4.Enabled = false;
            btnLEDReset.Enabled = false;
            btnUserBlk.Enabled = false;
            btnWriteByte.Enabled = false;
            tbWriteMultiByte.Enabled = false;
            btnWriteMultiByte.Enabled = false;
            btnBlockSendRst.Enabled = false;
            btnTransferReset.Enabled = false;
            btnResetTriggerOut.Enabled = false;
            btnResetBlock.Enabled = false;
            btnStopBlockTransfer.Enabled = false;
            btnLoopBack.Enabled = false;

            for (int i = 0; i < EPTTransmitDevice.Length; ++i)
            {
                EPTTransmitDevice[i] = new Transfer();
            }

            rbtnRepitions.Checked = true;
            rbtnInfinite.Checked = false;
        }

        //Index to store device selection
        Int32 device_index;

        //Create a Receive object of the Transfer Class.
        Transfer EPTReceiveData = new Transfer();

        //Eight Byte block for Block Transfers
        //byte[] block_8_in_payload = new byte[8] { 0x32, 0x56, 0xe1, 0x6b, 0xc0, 0x7d, 0x89, 0x2e };
        //byte[] block_16_in_payload = new byte[16] { 0x32, 0x56, 0xe1, 0x6b, 0xc0, 0x7d, 0x89, 0x2e, 0xb2, 0x05, 0x27, 0xf7, 0x99, 0x37, 0x42, 0xad };
        byte[] block_in_payload;

        //Create an array of the Transfer Class for device
        Transfer[] EPTTransmitDevice = new Transfer[8];

        //Block Transfer and Loop counter
        int BlockCount = 0;
        int LoopCount = 0;

        //Block Transfer Control 
        public bool BlockTransferInfinite = false;
        public bool BlockTransferReps = false;
        public bool BlockTransferStop = false;

        //String to Hold payload
        public String PayloadString = "";

        //Parameters
        public const byte TRIGGER_OUT_COMMAND = 0x1;
        public const byte TRANSFER_OUT_COMMAND = 0x2;
        public const byte BLOCK_OUT_COMMAND = 0x4;

        //Value to hold the errors in Block Compares
        public int BlockErrorCount = 0;
        public bool EnableLogFile = false;

        //Hold the previous status of the LED
        int LEDStatusPrevious = 0;

        //LED Status Register
        byte LEDStatus;

        //Parameters
        public const int SELECT_RANDOM = 1;
        public const int SELECT_SHIFT_LEFT = 2;
        public const int SELECT_SHIFT_RIGHT = 3;
        public const int SELECT_COUNT_UP = 4;
        public const int SELECT_COUNT_DOWN = 5;

        //Parameters for EPT Receive object
        public const byte TRANSFER_OUT_ADDRESS_1 = 0x1;
        public const byte TRANSFER_OUT_ADDRESS_2 = 0x2;

        // Main object loader
        private void EPT_Transfer_Demo_Load(object sender, System.EventArgs e)
        {
            // Call the List Devices function
            ListDevices();

            //Active Host Debug 
            //EPT_AH_SetDebugMode(1);

        }


        private void SetButtonEnables()
        {
            //Byte Transfer Buttons
                btnWriteByte.Enabled = true;
                tbWriteMultiByte.Enabled = true;
                btnWriteMultiByte.Enabled = true;
                
            //LED Blinky Buttons
                btnTrigger1.Enabled = true;
                btnTrigger2.Enabled = true;
                btnTrigger3.Enabled = true;
                btnTrigger4.Enabled = true;
                btnLEDReset.Enabled = true;
                btnRandom.Enabled = true;
                btnShiftLeft.Enabled = true;
                btnShiftRight.Enabled = true;
                btnCountUp.Enabled = true;
                btnCountDown.Enabled = true;

            //Block Transfer Buttons
                btnBlkCompare8.Enabled = true;
                btnBlkCompare16.Enabled = true;
                btnUserBlk.Enabled = true;
                btnBlockSendRst.Enabled = true;
                btnTransferReset.Enabled = true;
                btnResetTriggerOut.Enabled = true;
                btnResetBlock.Enabled = true;
                btnStopBlockTransfer.Enabled = true;
                btnLoopBack.Enabled = true;

                // Marks the device as closed in the GUI
                btnOpenDevice.Enabled = false;
                btnCloseDevice.Enabled = true;
        }


        // Handle "Open" device button
        private void btnOpenDevice_Click(object sender, EventArgs e)
        {
            //Open the Device
            OpenDevice();
        }

        // Handle "Close" device button
        private void btnCloseDevice_Click(object sender, EventArgs e)
        {
            btnLoopBack.Enabled = true;
            btnTrigger1.Enabled = true;
            btnTrigger2.Enabled = true;
            btnTrigger3.Enabled = true;
            btnTrigger4.Enabled = true;
            btnLEDReset.Enabled = true;
            btnBlkCompare8.Enabled = true;
            btnBlkCompare16.Enabled = true;
            btnStopBlockTransfer.Enabled = true;
            btnResetBlock.Enabled = true;
            btnResetTriggerOut.Enabled = true;
            gbTriggerOut.Enabled = true;
            gbTransferControl.Enabled = true;
            btnTransferReset.Enabled = true;
            btnBlockSendRst.Enabled = true;
            tbBlockSend.Enabled = true;

            // Make sure the device is closed
            if (EPT_AH_CloseDeviceByIndex(device_index) != 0)
            {
                btnBlkCompare8.Enabled = false;
                btnBlkCompare16.Enabled = false;
                btnTrigger1.Enabled = false;
                btnTrigger2.Enabled = false;
                btnTrigger3.Enabled = false;
                btnTrigger4.Enabled = false;
                btnLEDReset.Enabled = false;
                btnUserBlk.Enabled = false;
                btnWriteByte.Enabled = false;
                tbWriteMultiByte.Enabled = false;
                btnWriteMultiByte.Enabled = false;
                btnBlockSendRst.Enabled = false;
                btnTransferReset.Enabled = false;
                btnResetTriggerOut.Enabled = false;
                btnResetBlock.Enabled = false;
                btnStopBlockTransfer.Enabled = false;
                btnLoopBack.Enabled = false;
            }

            // Marks the device as closed in the GUI
            btnOpenDevice.Enabled = true;
            btnCloseDevice.Enabled = false;
        }

        // Handle the "Byte" button
        private void btnWriteByte_Click(object sender, EventArgs e)
        {
            int address_to_device;
            int ibyte = Convert.ToInt32(tbNumBytes.Text);
            address_to_device = Convert.ToInt32(tbAddress.Text);

            EPT_AH_SendByte(address_to_device, (char)ibyte);
        }

        // Handle the "Multi Byte" button
        private void btnWriteMultiByte_Click(object sender, EventArgs e)
        {
            int i, address_to_device;
            address_to_device = Convert.ToInt32(tbAddress.Text);
            string[] result = tbWriteMultiByte.Text.Split(' ');
            for (i = 0; i < result.Length; i++)
            {

                EPT_AH_SendByte(address_to_device, (char)Convert.ToInt32(result[i]));
                Thread.Sleep(1);
            }

        }

        // Handle the "LoopBack" button
        private void btnLoopBack_Click(object sender, EventArgs e)
        {
            EPT_AH_SendTransferControlByte((char)2, (char)1);
        }


        //===============================
        //  LED Blinky Controls
        //===============================
        
/*
                // Handle the LED trigger "1" button
                private void btnTrigger1_Click(object sender, EventArgs e)
                {
                    EPT_AH_SendTrigger((byte)1);
                }

                // Handle the LED trigger "2" button
                private void btnTrigger2_Click(object sender, EventArgs e)
                {
                    EPT_AH_SendTrigger((byte)2);
                }

                // Handle the LED trigger "3" button
                private void btnTrigger3_Click(object sender, EventArgs e)
                {
                    EPT_AH_SendTrigger((byte)4);
                }

                // Handle the LED trigger "4" button
                private void btnTrigger4_Click(object sender, EventArgs e)
                {
                    EPT_AH_SendTrigger((byte)8);
                }

                // Handle the LED trigger "Rst" button
                private void btnLEDReset_Click(object sender, EventArgs e)
                {
                    EPT_AH_SendTransferControlByte((char)2, (char)4);
                    Thread.Sleep(1);
                    EPT_AH_SendTransferControlByte((char)2, (char)0);
                }
*/

/*
                // Handle the "Blinky!" lightshow button
                private unsafe void btnBlinky_Click(object sender, EventArgs e)
                {
                    Int32 blink_time = 100;      // 100 milliseconds
                    Int32 sequence_cycles = 100; // Cycle, 100 times
                    Int32 sequence_size = 24;    // Size of the LED lightshow sequence


                    // DEBUG:
                    // Use a random timer instead of 100ms
                    Random random = new Random();
                    // Go between 50 and 300 milliseconds
                    blink_time = random.Next(50, 300);

                    // Set up light controls according to the following legend:
                    // 1: Light 1 ON
                    // 2: Light 2 ON
                    // 3: Light 3 ON
                    // 4: Light 4 ON
                    // 0: All lights OFF
                    // > 4: Random light ON
                    byte[] light_controls = new byte[24] {1, 0, 2, 0, 3, 0, 4, 0, 
                                                               3, 0, 2, 0, 1, 0, 5, 0, 
                                                               5, 0, 5, 0, 1, 4, 2, 3};
                    fixed (byte* pBuf = light_controls)
                    {
                        // Execute the light show
                        EPT_AH_LEDBlinky(blink_time, sequence_cycles, pBuf, sequence_size);
                    }

                    btnWriteByte.Enabled = false;
                    btnLoopBack.Enabled = false;
                    btnTrigger1.Enabled = false;
                    btnTrigger2.Enabled = false;
                    btnTrigger3.Enabled = false;
                    btnTrigger4.Enabled = false;
                    btnLEDReset.Enabled = false;
                    btnBlkCompare8.Enabled = false;
                    btnBlkCompare16.Enabled = false;
                    btnStopBlockTransfer.Enabled = false;
                    btnResetBlock.Enabled = false;
                    btnResetTriggerOut.Enabled = false;
                    gbTriggerOut.Enabled = false;
                    gbTransferControl.Enabled = false;
                    tbWriteMultiByte.Enabled = false;
                    btnWriteMultiByte.Enabled = false;
                    btnTransferReset.Enabled = false;
                    btnBlockSendRst.Enabled = false;
                    tbBlockSend.Enabled = false;
                    btnUserBlk.Enabled = false;
                }
*/


        private void btnTrigger1_Click(object sender, EventArgs e)
        {
            //Flip bit 1
            LEDStatus ^= (1 << 0);

            //Send the LED Status Byte to the Active Transfer Module 2	
            EPT_AH_SendByte(0x01, (char)LEDStatus);

            //Send Trigger 1 to latch the static value
            EPT_AH_SendTrigger((byte)1);

            //Send the static value to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x60);

        }

        private void btnTrigger2_Click(object sender, EventArgs e)
        {
            //Flip bit 2
            LEDStatus ^= (1 << 1);

            //Send the LED Status Byte to the Active Transfer Module 2	
            EPT_AH_SendByte(0x01, (char)LEDStatus);

            //Send Trigger 1 to latch the static value
            EPT_AH_SendTrigger((byte)1);

            //Send the static value to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x60);

        }

        private void btnTrigger3_Click(object sender, EventArgs e)
        {
            //Flip bit 3
            LEDStatus ^= (1 << 2);

            //Send the LED Status Byte to the Active Transfer Module 2	
            EPT_AH_SendByte(0x01, (char)LEDStatus);

            //Send Trigger 1 to latch the static value
            EPT_AH_SendTrigger((byte)1);

            //Send the static value to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x60);

        }

        private void btnTrigger4_Click(object sender, EventArgs e)
        {
            //Flip bit 4
            LEDStatus ^= (1 << 3);

            //Send the LED Status Byte to the Active Transfer Module 2	
            EPT_AH_SendByte(0x01, (char)LEDStatus);

            //Send Trigger 1 to latch the static value
            EPT_AH_SendTrigger((byte)1);

            //Send the static value to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x60);

        }

        private void btnLEDReset_Click(object sender, EventArgs e)
        {
            EPT_AH_SendTransferControlByte((char)2, (char)4);
            Thread.Sleep(1);
            EPT_AH_SendTransferControlByte((char)2, (char)0);

            Thread.Sleep(500);
            EPT_AH_SendTransferControlByte((char)2, (char)4);
            Thread.Sleep(1);
            EPT_AH_SendTransferControlByte((char)2, (char)0);

            btnRandom.BackColor = Color.LightGray;
            btnShiftLeft.BackColor = Color.LightGray;
            btnShiftRight.BackColor = Color.LightGray;
            btnCountUp.BackColor = Color.LightGray;
            btnCountDown.BackColor = Color.LightGray;

            btnRandom.FlatStyle = FlatStyle.Standard;
            btnShiftLeft.FlatStyle = FlatStyle.Standard;
            btnShiftRight.FlatStyle = FlatStyle.Standard;
            btnCountUp.FlatStyle = FlatStyle.Standard;
            btnCountDown.FlatStyle = FlatStyle.Standard;
        }

        public void LoadTimerValue()
        {

            //Send the Timer Low Value to the Active Transfer Module 2
            int intValue = Convert.ToInt32(tbTimerValue.Text);
            byte[] intBytes = BitConverter.GetBytes(intValue);
            //if (BitConverter.IsLittleEndian)
            //    Array.Reverse(intBytes);
            byte[] result = intBytes;

            EPT_AH_SendByte(0x01, (char)result[0]);

            //Send Trigger 4 to latch the Timer Low Value
            EPT_AH_SendTrigger((byte)0x10);

            //Send the Timer High Value to the Active Transfer Module 2
            EPT_AH_SendByte(0x01, (char)result[1]);

            //Send Trigger 5 to latch the Timer High Value
            EPT_AH_SendTrigger((byte)0x20);
        }


        private void btnRandom_Click(object sender, EventArgs e)
        {
            byte SeedValue = 0;
            // Use a random timer instead of 100ms
            Random random = new Random();
            // Go between 50 and 300 milliseconds
            SeedValue = (byte)random.Next(10, 255);

            LoadTimerValue();

            //Send the Random Seed value to the Active Transfer Module 2	
            EPT_AH_SendByte(0x01, (char)SeedValue);

            //Send Trigger 6 to latch the Seed Value
            EPT_AH_SendTrigger((byte)0x40);

            //Send the start Random Blinky to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x10);

            //Set the Button State so User can know which function is selected
            SetLEDControlButtons(SELECT_RANDOM);
        }

        private void btnShiftLeft_Click(object sender, EventArgs e)
        {
            LoadTimerValue();

            //Send the Inital value to the Active Transfer Module 1
            //for loading into the Shift Left LED
            EPT_AH_SendByte(0x01, (char)LEDStatus);

            //Send Trigger 1 to latch the Shift-Count Value
            EPT_AH_SendTrigger((byte)0x02);

            //Send the start Shift Left to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x20);

            //Set the Button State so User can know which function is selected
            SetLEDControlButtons(SELECT_SHIFT_LEFT);
        }

        private void btnShiftRight_Click(object sender, EventArgs e)
        {
            LoadTimerValue();

            //Send the Inital value to the Active Transfer Module 2
            //for loading into the Shift Left LED
            EPT_AH_SendByte(0x01, (char)LEDStatus);

            //Send Trigger 1 to latch the Shift-Count  Value
            EPT_AH_SendTrigger((byte)0x02);

            //Send the start Shift Right to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x30);

            //Set the Button State so User can know which function is selected
            SetLEDControlButtons(SELECT_SHIFT_RIGHT);
        }

        private void btnCountUp_Click(object sender, EventArgs e)
        {
            LoadTimerValue();

            //Send the Inital value to the Active Transfer Module 2
            //for loading into the Shift Left LED
            EPT_AH_SendByte(0x01, (char)LEDStatus);

            //Send Trigger 1 to latch the Shift-Count  Value
            EPT_AH_SendTrigger((byte)0x02);

            //Send the start Shift Right to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x40);

            //Set the Button State so User can know which function is selected
            SetLEDControlButtons(SELECT_COUNT_UP);
        }

        private void btnCountDown_Click(object sender, EventArgs e)
        {
            LoadTimerValue();

            //Send the Inital value to the Active Transfer Module 2
            //for loading into the Shift Left LED
            EPT_AH_SendByte(0x01, (char)LEDStatus);

            //Send Trigger 1 to latch the Shift-Count  Value
            EPT_AH_SendTrigger((byte)0x02);

            //Send the start Shift Right to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x50);

            //Set the Button State so User can know which function is selected
            SetLEDControlButtons(SELECT_COUNT_DOWN);
        }

        private void trkbrTimer_Scroll(object sender, EventArgs e)
        {
            int TimerValue = 0;

            if (trkbrTimer.Value > 65535)
                TimerValue = 65535;
            else if (trkbrTimer.Value < 1000)
                TimerValue = 1000;
            else
                TimerValue = trkbrTimer.Value;

            tbTimerValue.Text = Convert.ToString(TimerValue);

            LoadTimerValue();
        }

        void SetLEDControlButtons(int FuncSelect)
        {
            switch (FuncSelect)
            {
                case SELECT_RANDOM:
                    btnRandom.BackColor = Color.LightSteelBlue;
                    btnShiftLeft.BackColor = Color.LightGray;
                    btnShiftRight.BackColor = Color.LightGray;
                    btnCountUp.BackColor = Color.LightGray;
                    btnCountDown.BackColor = Color.LightGray;
                    break;
                case SELECT_SHIFT_LEFT:
                    btnRandom.BackColor = Color.LightGray;
                    btnShiftLeft.BackColor = Color.LightSteelBlue;
                    btnShiftRight.BackColor = Color.LightGray;
                    btnCountUp.BackColor = Color.LightGray;
                    btnCountDown.BackColor = Color.LightGray;
                    break;
                case SELECT_SHIFT_RIGHT:
                    btnRandom.BackColor = Color.LightGray;
                    btnShiftLeft.BackColor = Color.LightGray;
                    btnShiftRight.BackColor = Color.LightSteelBlue;
                    btnCountUp.BackColor = Color.LightGray;
                    btnCountDown.BackColor = Color.LightGray;
                    break;
                case SELECT_COUNT_UP:
                    btnRandom.BackColor = Color.LightGray;
                    btnShiftLeft.BackColor = Color.LightGray;
                    btnShiftRight.BackColor = Color.LightGray;
                    btnCountUp.BackColor = Color.LightSteelBlue;
                    btnCountDown.BackColor = Color.LightGray;
                    break;
                case SELECT_COUNT_DOWN:
                    btnRandom.BackColor = Color.LightGray;
                    btnShiftLeft.BackColor = Color.LightGray;
                    btnShiftRight.BackColor = Color.LightGray;
                    btnCountUp.BackColor = Color.LightGray;
                    btnCountDown.BackColor = Color.LightSteelBlue;
                    break;
                default:
                    btnRandom.BackColor = Color.LightGray;
                    btnShiftLeft.BackColor = Color.LightGray;
                    btnShiftRight.BackColor = Color.LightGray;
                    btnCountUp.BackColor = Color.LightGray;
                    btnCountDown.BackColor = Color.LightGray;
                    break;
            }

            btnRandom.FlatStyle = FlatStyle.Standard;
            btnShiftLeft.FlatStyle = FlatStyle.Standard;
            btnShiftRight.FlatStyle = FlatStyle.Standard;
            btnCountUp.FlatStyle = FlatStyle.Standard;
            btnCountDown.FlatStyle = FlatStyle.Standard;
        }
       
        //===============================
        //  Block Transfer Controls
        //===============================
        
        // Handle the radiobutton check for "Infinite" loop
        private void rbtnInfinite_CheckedChanged(object sender, EventArgs e)
        {
            BlockTransferInfinite = true;
            BlockTransferReps = false;
        }

        // Handle the radiobutton check for "Repetitions" loop
        private void rbtnRepitions_CheckedChanged(object sender, EventArgs e)
        {
            BlockTransferInfinite = false;
            BlockTransferReps = true;
        }

        // Handle the "Stop" block transfer button
        private void btnStopBlockTransfer_Click(object sender, EventArgs e)
        {
            BlockTransferStop = true;
        }

        // Reset the "Button XX Pressed" in Switches Groups
        private void btnResetTriggerOut_Click(object sender, EventArgs e)
        {

            lLabelSwitch1.Text = "";
            lLabelSwitch2.Text = "";

        }

        // Handle user block update
        private void btnUserBlk_Click(object sender, EventArgs e)
        {
            int value;
            if (tbBlockSend.Text.Trim().Length == 0) return;
            int BlockAddress = (int)Convert.ToInt32(tbBlockRcvAddress.Text);
            uint BlockRepitions = (uint)Convert.ToInt32(tbRepitions.Text);
            if (EPTTransmitDevice[BlockAddress].TransferPending)
                return;

            int i, address_to_device;
            address_to_device = Convert.ToInt32(tbAddress.Text);
            string[] result = tbBlockSend.Text.Split(' ', '\n');
            block_in_payload = new byte[result.Length];

            for (i = 0; i < result.Length; i++)
            {
                int.TryParse(result[i], out value);
                block_in_payload[i] = Convert.ToByte(value);// Convert.ToByte(result[i]);
            }

            EPTTransmitDevice[BlockAddress].Address = BlockAddress;
            EPTTransmitDevice[BlockAddress].Length = result.Length;
            EPTTransmitDevice[BlockAddress].Repititions = BlockRepitions;
            BlockCount = 0;
            LoopCount = 0;
            BlockErrorCount = 0;
            BlockTransferStop = false;

            Thread t = new Thread(new ParameterizedThreadStart(BlockCompare));
            t.Start(BlockAddress);

        }

        // Handle the "BLOCK8" compare button
        private void btnBlkCompare8_Click(object sender, EventArgs e)
        {
            int BlockAddress = (int)Convert.ToInt32(tbBlockRcvAddress.Text);
            int BlockLength = 8;
            uint BlockRepitions = (uint)Convert.ToInt32(tbRepitions.Text);
            if (EPTTransmitDevice[BlockAddress].TransferPending)
                return;
            EPTTransmitDevice[BlockAddress].Address = BlockAddress;
            EPTTransmitDevice[BlockAddress].Length = BlockLength;
            EPTTransmitDevice[BlockAddress].Repititions = BlockRepitions;
            BlockCount = 0;
            LoopCount = 0;
            BlockErrorCount = 0;
            BlockTransferStop = false;
            block_in_payload = block_8_in_payload;

            Thread t = new Thread(new ParameterizedThreadStart(BlockWrite));
            t.Start(BlockAddress);
        }

        // Handle the "BLOCK16" compare button
        private void btnBlkCompare16_Click(object sender, EventArgs e)
        {
            int BlockAddress = (int)Convert.ToInt32(tbBlockRcvAddress.Text);
            int BlockLength = 16;
            uint BlockRepitions = (uint)Convert.ToInt32(tbRepitions.Text);
            if (EPTTransmitDevice[BlockAddress].TransferPending)
                return;
            EPTTransmitDevice[BlockAddress].Address = BlockAddress;
            EPTTransmitDevice[BlockAddress].Length = BlockLength;
            EPTTransmitDevice[BlockAddress].Repititions = BlockRepitions;
            BlockCount = 0;
            LoopCount = 0;
            BlockErrorCount = 0;
            BlockTransferStop = false;
            block_in_payload = block_16_in_payload;

            Thread t = new Thread(new ParameterizedThreadStart(BlockWrite));
            t.Start(BlockAddress);

        }

        // Handle the "BLOCK256" compare button
        private void btnBlkCompare256_Click(object sender, EventArgs e)
        {
            int BlockAddress = (int)Convert.ToInt32(tbBlockRcvAddress.Text);
            int BlockLength = 128;
            uint BlockRepitions = (uint)Convert.ToInt32(tbRepitions.Text);
            if (EPTTransmitDevice[BlockAddress].TransferPending)
                return;
            EPTTransmitDevice[BlockAddress].Address = BlockAddress;
            EPTTransmitDevice[BlockAddress].Length = BlockLength;
            EPTTransmitDevice[BlockAddress].Repititions = BlockRepitions;
            BlockCount = 0;
            LoopCount = 0;
            BlockErrorCount = 0;
            BlockTransferStop = false;
            block_in_payload = block_128_in_payload;

            Thread t = new Thread(new ParameterizedThreadStart(BlockWrite));
            t.Start(BlockAddress);

        }

        // Compare blocks of send/receive data
        public unsafe void BlockWrite(object data)
        {
            int BlockAddress = (int)data;
            byte[] cBuf = new Byte[EPTTransmitDevice[BlockAddress].Length];

                //Select the Active Device
                EPT_AH_SelectActiveDeviceByIndex(device_index);
                //Copy the dummy data to the buffer to be transferred.
                Buffer.BlockCopy(block_in_payload, 0, cBuf, 0, EPTTransmitDevice[BlockAddress].Length);
                fixed (byte* pBuf = cBuf)
                {
                    //Send the dummy data to the Active Device
                    int xx = EPT_AH_SendBlock(EPTTransmitDevice[BlockAddress].Address, (void*)pBuf, (uint)EPTTransmitDevice[BlockAddress].Length);
                }
                //Send the Block Loop Back command
                //Thread.Sleep(1);
                EPT_AH_SendTransferControlByte((char)2, (char)2);
                //Send the transfer FIFO to the Active Host command
                //Thread.Sleep(1);
                EPT_AH_SendTrigger((byte)128);
                //Reset all commands
                //Thread.Sleep(1);
                //EPT_AH_SendTransferControlByte((char)2, (char)0);
                //stopWatch.Start();

        }

        // Compare blocks of send/receive data
        public unsafe void BlockCompare(object data)
        {
            int BlockAddress = (int)data;

            if ((EPTTransmitDevice[BlockAddress].Repititions > 0) & !EPTTransmitDevice[BlockAddress].TransferPending & !BlockTransferStop)
            {
                //Send the transfer FIFO to the Active Host command
                //Thread.Sleep(1);
                EPT_AH_SendTrigger((byte)128);

                if (BlockTransferInfinite)
                {
                    EPTTransmitDevice[BlockAddress].Repititions = 1;
                }
                else
                {
                    EPTTransmitDevice[BlockAddress].Repititions--;
                }
            }
        }


        // Handle the "OK" button
        private void btnOk_Click(object sender, EventArgs e)
        {
            EPT_AH_CloseDeviceByIndex(device_index);
            btnOpenDevice.Enabled = true;
            btnCloseDevice.Enabled = false;

            Application.Exit();
        }

        // Handle the "Cancel" button
        private void btnCancel_Click(object sender, EventArgs e)
        {
            EPT_AH_CloseDeviceByIndex(device_index);
            btnOpenDevice.Enabled = true;
            btnCloseDevice.Enabled = false;

            Application.Exit();

        }

        // Handle clearing of the Block window
        private void btnResetBlock_Click(object sender, EventArgs e)
        {
            tbBlockRcv.Clear();
        }

        // Parse incoming EPT data
        private void EPTParseReceive()
        {
            // Parse the command
            switch (EPTReceiveData.Command)
            {
                // This is a trigger command
                case TRIGGER_OUT_COMMAND:
                    TriggerOutReceive();
                    break;
                // This is a single-byte transfer command
                case TRANSFER_OUT_COMMAND:
                    TransferOutReceive();
                    break;
                // This is a data block transfer command
                case BLOCK_OUT_COMMAND:
                    BLockOutReceive();
                    break;
                default:
                    break;
            }
        }

        // Handle GUI update of an incoming trigger
        public void TriggerOutReceive()
        {
            //switch (EPTReceiveData.cBlockBuf[0])
            switch (EPTReceiveData.Payload)
            {
                case 0x04:
                    lLabelSwitch1.Text = "Switch 1\n Pressed";
                    break;
                case 0x08:
                    lLabelSwitch2.Text = "Switch 2\n Pressed";
                    break;
                default:
                    lLabelSwitch1.Text = "";
                    lLabelSwitch2.Text = "";
                    break;
            }
        }

        // Handle GUI update of an incoming byte transfer
        public void TransferOutReceive()
        {
                switch (EPTReceiveData.Address)
                {
                    case TRANSFER_OUT_ADDRESS_1:
                        TransferOutReceiveLEDStatus();
                        break;

                    case TRANSFER_OUT_ADDRESS_2:
                        TransferOutReceiveLoopBackByte();
                        break;
                    default:
                        break;
                }

        }

        public void TransferOutReceiveLEDStatus()
        {
            string WriteRcvChar = "";

            LEDStatus = EPTReceiveData.cBlockBuf[0];
            WriteRcvChar = String.Format("{0}", LEDStatus);

            if ((LEDStatus & 0x01) != (LEDStatusPrevious & 0x01))
            {
                if ((LEDStatus & 0x01) == 1) btnTrigger1.BackColor = Color.Lime;
                else btnTrigger1.BackColor = Color.LightGray;
            }

            if ((LEDStatus & 0x02) != (LEDStatusPrevious & 0x02))
            {
                if ((LEDStatus & 0x02) == 2) btnTrigger2.BackColor = Color.Lime;
                else btnTrigger2.BackColor = Color.LightGray;
            }

            if ((LEDStatus & 0x04) != (LEDStatusPrevious & 0x04))
            {
                if ((LEDStatus & 0x04) == 4) btnTrigger3.BackColor = Color.Lime;
                else btnTrigger3.BackColor = Color.LightGray;
            }

            if ((LEDStatus & 0x08) != (LEDStatusPrevious & 0x08))
            {
                if ((LEDStatus & 0x08) == 8) btnTrigger4.BackColor = Color.Lime;
                else btnTrigger4.BackColor = Color.LightGray;
            }

            LEDStatusPrevious = LEDStatus;

            btnTrigger1.FlatStyle = FlatStyle.Flat;
            btnTrigger2.FlatStyle = FlatStyle.Flat;
            btnTrigger3.FlatStyle = FlatStyle.Flat;
            btnTrigger4.FlatStyle = FlatStyle.Flat;
        }

        public void TransferOutReceiveLoopBackByte()
        {
            string WriteRcvChar = "";
            WriteRcvChar = String.Format("{0}", (int)EPTReceiveData.cBlockBuf[0]);
            this.Invoke(new MethodInvoker(delegate() { tbDataBytes.AppendText(", " + WriteRcvChar); }));
        }

        // Handle clearing of byte data from the GUI when "Rst" is pressed
        private void btnTransferReset_Click(object sender, EventArgs e)
        {
            tbDataBytes.Clear();
        }

        // Handle GUI update of an incoming block transfer
        public void BLockOutReceive()
        {
            EPTTransmitDevice[EPTReceiveData.Address].TransferPending = false;
            BlockCount = BlockCount + EPTReceiveData.Length;
            BlockErrorCount += ByteArrayCompare(block_in_payload, EPTReceiveData.cBlockBuf, EnableLogFile);


            if (EPTTransmitDevice[EPTReceiveData.Address].Repititions == 0)
            {
                Thread u = new Thread(new ParameterizedThreadStart(DisplayBlockOut));
                u.Start(BlockCount);
            }
            else if (BlockTransferInfinite)
            {
                if ((LoopCount++ % 100) == 0)
                {
                    Thread u = new Thread(new ParameterizedThreadStart(DisplayBlockOut));
                    u.Start(BlockCount);
                }
            }

            //Thread.Sleep(5);
            Thread t = new Thread(new ParameterizedThreadStart(BlockCompare));
            t.Start(EPTReceiveData.Address);
        
        }

        // Display data from the incoming block of transfer
        public void DisplayBlockOut(object CountData)
        {
            string s = String.Empty;
            foreach (byte b in EPTReceiveData.cBlockBuf)
            {
                s += String.Format("{0:x2}", (int)System.Convert.ToUInt32(b.ToString()));
                s += "\r\n";
            }
            //tbBlockRcv.AppendText(s);
            this.Invoke(new MethodInvoker(delegate() { tbBlockRcv.AppendText(s); }));

            string s2 = String.Empty;
            s2 = String.Format("{0:x2}", (int)System.Convert.ToUInt32(EPTReceiveData.Address.ToString()));
            this.Invoke(new MethodInvoker(delegate() { tbBlockRcvAddress.Text = s2; }));

            string s3 = String.Empty;
            s3 = String.Format("{0}", (int)EPTReceiveData.Length);
            this.Invoke(new MethodInvoker(delegate() { tbBlockRcvLength.Text = s3; }));

            string sBlockCount = String.Format("{0}", (int)CountData);
            this.Invoke(new MethodInvoker(delegate() { tbBlockCount.Text = sBlockCount; }));


            string sBlockErrorCount = String.Format("{0}", BlockErrorCount);
            this.Invoke(new MethodInvoker(delegate() { tbBlockThruPut.Text = sBlockErrorCount; }));

        }

        public void UpdateTextBlock()
        {
            string s = String.Empty;
            foreach (byte b in EPTReceiveData.cBlockBuf)
            {
                s += String.Format("{0:x2}", (int)System.Convert.ToUInt32(b.ToString()));
                s += "\r\n";
            }
            tbBlockRcv.AppendText(s);
        }

        // Compare byte data between two arrays and return the total number of differences
        public int ByteArrayCompare(byte[] a1, byte[] a2, bool EnableLogFile)
        {
            int ErrorCount = 0;
            int Length = a1.Length;

            // Get the shortest of the two arrays
            if (Length > a2.Length) Length = a2.Length;
            for (int i = 0; i < Length; i++)
            {
                if (a1[i] != a2[i])
                {
                    ErrorCount++;
                }
            }
            // Return total number of errors
            return ErrorCount;
        }

        // Reset the Block Send window 
        private void btnBlockSendRst_Click(object sender, EventArgs e)
        {
            tbBlockSend.Clear();
        }



    }

    // Transfer object definition
    public class Transfer
    {
        public int Command;
        public int Address;
        public int Length;
        public int Payload;
        public byte[] cBlockBuf;
        public bool TransferPending;
        public uint Repititions;

        public Transfer()
        {
            Command = 0;
            Address = 0;
            Length = 0;
            Payload = 0;
            TransferPending = false;
            Repititions = 0;
        }

    }

}

