namespace EPT_Transfer_Demo
{
    partial class EPT_Transfer_Demo
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.cmbDevList = new System.Windows.Forms.ComboBox();
            this.btnOpenDevice = new System.Windows.Forms.Button();
            this.btnCloseDevice = new System.Windows.Forms.Button();
            this.btnWriteByte = new System.Windows.Forms.Button();
            this.tbNumBytes = new System.Windows.Forms.TextBox();
            this.btnLoopBack = new System.Windows.Forms.Button();
            this.tbAddress = new System.Windows.Forms.TextBox();
            this.tbDataBytes = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.tbBlockRcv = new System.Windows.Forms.TextBox();
            this.btnBlkCompare8 = new System.Windows.Forms.Button();
            this.btnBlkCompare16 = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.tbBlockRcvAddress = new System.Windows.Forms.TextBox();
            this.Length = new System.Windows.Forms.Label();
            this.tbBlockRcvLength = new System.Windows.Forms.TextBox();
            this.tbBlockThruPut = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.tbBlockCount = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.btnOk = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.rbtnRepitions = new System.Windows.Forms.RadioButton();
            this.rbtnInfinite = new System.Windows.Forms.RadioButton();
            this.tbRepitions = new System.Windows.Forms.TextBox();
            this.btnStopBlockTransfer = new System.Windows.Forms.Button();
            this.label10 = new System.Windows.Forms.Label();
            this.btnResetBlock = new System.Windows.Forms.Button();
            this.label11 = new System.Windows.Forms.Label();
            this.lLabelSwitch1 = new System.Windows.Forms.Label();
            this.lLabelSwitch2 = new System.Windows.Forms.Label();
            this.btnResetTriggerOut = new System.Windows.Forms.Button();
            this.gbTriggerOut = new System.Windows.Forms.GroupBox();
            this.gbTransferControl = new System.Windows.Forms.GroupBox();
            this.btnTransferReset = new System.Windows.Forms.Button();
            this.btnWriteMultiByte = new System.Windows.Forms.Button();
            this.tbWriteMultiByte = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnBlkCompare256 = new System.Windows.Forms.Button();
            this.btnUserBlk = new System.Windows.Forms.Button();
            this.btnBlockSendRst = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.tbBlockSend = new System.Windows.Forms.TextBox();
            this.LEDBox = new System.Windows.Forms.GroupBox();
            this.trkbrTimer = new System.Windows.Forms.TrackBar();
            this.btnCountDown = new System.Windows.Forms.Button();
            this.btnCountUp = new System.Windows.Forms.Button();
            this.btnShiftRight = new System.Windows.Forms.Button();
            this.btnShiftLeft = new System.Windows.Forms.Button();
            this.label13 = new System.Windows.Forms.Label();
            this.tbTimerValue = new System.Windows.Forms.TextBox();
            this.btnRandom = new System.Windows.Forms.Button();
            this.btnLEDReset = new System.Windows.Forms.Button();
            this.btnTrigger4 = new System.Windows.Forms.Button();
            this.btnTrigger3 = new System.Windows.Forms.Button();
            this.btnTrigger2 = new System.Windows.Forms.Button();
            this.btnTrigger1 = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.gbTriggerOut.SuspendLayout();
            this.gbTransferControl.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.LEDBox.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.trkbrTimer)).BeginInit();
            this.SuspendLayout();
            // 
            // cmbDevList
            // 
            this.cmbDevList.FormattingEnabled = true;
            this.cmbDevList.Location = new System.Drawing.Point(25, 12);
            this.cmbDevList.Name = "cmbDevList";
            this.cmbDevList.Size = new System.Drawing.Size(170, 21);
            this.cmbDevList.TabIndex = 1;
            // 
            // btnOpenDevice
            // 
            this.btnOpenDevice.Location = new System.Drawing.Point(240, 13);
            this.btnOpenDevice.Name = "btnOpenDevice";
            this.btnOpenDevice.Size = new System.Drawing.Size(50, 23);
            this.btnOpenDevice.TabIndex = 2;
            this.btnOpenDevice.Text = "Open";
            this.btnOpenDevice.UseVisualStyleBackColor = true;
            this.btnOpenDevice.Click += new System.EventHandler(this.btnOpenDevice_Click);
            // 
            // btnCloseDevice
            // 
            this.btnCloseDevice.Location = new System.Drawing.Point(342, 13);
            this.btnCloseDevice.Name = "btnCloseDevice";
            this.btnCloseDevice.Size = new System.Drawing.Size(52, 23);
            this.btnCloseDevice.TabIndex = 3;
            this.btnCloseDevice.Text = "Close";
            this.btnCloseDevice.UseVisualStyleBackColor = true;
            this.btnCloseDevice.Click += new System.EventHandler(this.btnCloseDevice_Click);
            // 
            // btnWriteByte
            // 
            this.btnWriteByte.Location = new System.Drawing.Point(28, 43);
            this.btnWriteByte.Name = "btnWriteByte";
            this.btnWriteByte.Size = new System.Drawing.Size(50, 23);
            this.btnWriteByte.TabIndex = 4;
            this.btnWriteByte.Text = "Byte";
            this.btnWriteByte.UseVisualStyleBackColor = true;
            this.btnWriteByte.Click += new System.EventHandler(this.btnWriteByte_Click);
            // 
            // tbNumBytes
            // 
            this.tbNumBytes.Location = new System.Drawing.Point(65, 22);
            this.tbNumBytes.Name = "tbNumBytes";
            this.tbNumBytes.Size = new System.Drawing.Size(28, 20);
            this.tbNumBytes.TabIndex = 5;
            this.tbNumBytes.Text = "255";
            this.tbNumBytes.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // btnLoopBack
            // 
            this.btnLoopBack.Location = new System.Drawing.Point(171, 51);
            this.btnLoopBack.Name = "btnLoopBack";
            this.btnLoopBack.Size = new System.Drawing.Size(65, 23);
            this.btnLoopBack.TabIndex = 6;
            this.btnLoopBack.Text = "LoopBack";
            this.btnLoopBack.UseVisualStyleBackColor = true;
            this.btnLoopBack.Click += new System.EventHandler(this.btnLoopBack_Click);
            // 
            // tbAddress
            // 
            this.tbAddress.Location = new System.Drawing.Point(204, 22);
            this.tbAddress.Name = "tbAddress";
            this.tbAddress.Size = new System.Drawing.Size(17, 20);
            this.tbAddress.TabIndex = 7;
            this.tbAddress.Text = "2";
            this.tbAddress.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbDataBytes
            // 
            this.tbDataBytes.Location = new System.Drawing.Point(314, 19);
            this.tbDataBytes.Multiline = true;
            this.tbDataBytes.Name = "tbDataBytes";
            this.tbDataBytes.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbDataBytes.Size = new System.Drawing.Size(98, 93);
            this.tbDataBytes.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 84);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(70, 13);
            this.label1.TabIndex = 9;
            this.label1.Text = "Multiple Byte:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(3, 25);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 13);
            this.label2.TabIndex = 10;
            this.label2.Text = "Send Byte:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(153, 25);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(45, 13);
            this.label3.TabIndex = 11;
            this.label3.Text = "Address";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(240, 22);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(71, 13);
            this.label4.TabIndex = 12;
            this.label4.Text = "Receive Byte";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(334, 16);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(77, 13);
            this.label6.TabIndex = 19;
            this.label6.Text = "Block Receive";
            // 
            // tbBlockRcv
            // 
            this.tbBlockRcv.Location = new System.Drawing.Point(326, 36);
            this.tbBlockRcv.Multiline = true;
            this.tbBlockRcv.Name = "tbBlockRcv";
            this.tbBlockRcv.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbBlockRcv.Size = new System.Drawing.Size(100, 131);
            this.tbBlockRcv.TabIndex = 20;
            this.tbBlockRcv.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // btnBlkCompare8
            // 
            this.btnBlkCompare8.Location = new System.Drawing.Point(140, 37);
            this.btnBlkCompare8.Name = "btnBlkCompare8";
            this.btnBlkCompare8.Size = new System.Drawing.Size(75, 23);
            this.btnBlkCompare8.TabIndex = 21;
            this.btnBlkCompare8.Text = "BLOCK 8";
            this.btnBlkCompare8.UseVisualStyleBackColor = true;
            this.btnBlkCompare8.Click += new System.EventHandler(this.btnBlkCompare8_Click);
            // 
            // btnBlkCompare16
            // 
            this.btnBlkCompare16.Location = new System.Drawing.Point(140, 66);
            this.btnBlkCompare16.Name = "btnBlkCompare16";
            this.btnBlkCompare16.Size = new System.Drawing.Size(75, 23);
            this.btnBlkCompare16.TabIndex = 22;
            this.btnBlkCompare16.Text = "BLOCK 16";
            this.btnBlkCompare16.UseVisualStyleBackColor = true;
            this.btnBlkCompare16.Click += new System.EventHandler(this.btnBlkCompare16_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(6, 205);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(45, 13);
            this.label7.TabIndex = 23;
            this.label7.Text = "Address";
            // 
            // tbBlockRcvAddress
            // 
            this.tbBlockRcvAddress.Location = new System.Drawing.Point(57, 200);
            this.tbBlockRcvAddress.Name = "tbBlockRcvAddress";
            this.tbBlockRcvAddress.Size = new System.Drawing.Size(24, 20);
            this.tbBlockRcvAddress.TabIndex = 24;
            this.tbBlockRcvAddress.Text = "4";
            this.tbBlockRcvAddress.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // Length
            // 
            this.Length.AutoSize = true;
            this.Length.Location = new System.Drawing.Point(90, 201);
            this.Length.Name = "Length";
            this.Length.Size = new System.Drawing.Size(40, 13);
            this.Length.TabIndex = 25;
            this.Length.Text = "Length";
            // 
            // tbBlockRcvLength
            // 
            this.tbBlockRcvLength.Location = new System.Drawing.Point(136, 198);
            this.tbBlockRcvLength.Name = "tbBlockRcvLength";
            this.tbBlockRcvLength.Size = new System.Drawing.Size(26, 20);
            this.tbBlockRcvLength.TabIndex = 26;
            this.tbBlockRcvLength.Text = "8";
            this.tbBlockRcvLength.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbBlockThruPut
            // 
            this.tbBlockThruPut.Location = new System.Drawing.Point(189, 198);
            this.tbBlockThruPut.Name = "tbBlockThruPut";
            this.tbBlockThruPut.Size = new System.Drawing.Size(51, 20);
            this.tbBlockThruPut.TabIndex = 27;
            this.tbBlockThruPut.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(246, 200);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(34, 13);
            this.label8.TabIndex = 28;
            this.label8.Text = "Errors";
            // 
            // tbBlockCount
            // 
            this.tbBlockCount.Location = new System.Drawing.Point(292, 198);
            this.tbBlockCount.Name = "tbBlockCount";
            this.tbBlockCount.Size = new System.Drawing.Size(53, 20);
            this.tbBlockCount.TabIndex = 29;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(351, 200);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(90, 13);
            this.label9.TabIndex = 30;
            this.label9.Text = "Bytes Transferred";
            // 
            // btnOk
            // 
            this.btnOk.Location = new System.Drawing.Point(130, 698);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(75, 23);
            this.btnOk.TabIndex = 31;
            this.btnOk.Text = "OK";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(258, 698);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 32;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // rbtnRepitions
            // 
            this.rbtnRepitions.AutoSize = true;
            this.rbtnRepitions.Location = new System.Drawing.Point(246, 37);
            this.rbtnRepitions.Name = "rbtnRepitions";
            this.rbtnRepitions.Size = new System.Drawing.Size(74, 17);
            this.rbtnRepitions.TabIndex = 41;
            this.rbtnRepitions.TabStop = true;
            this.rbtnRepitions.Text = "Repititions";
            this.rbtnRepitions.UseVisualStyleBackColor = true;
            this.rbtnRepitions.CheckedChanged += new System.EventHandler(this.rbtnRepitions_CheckedChanged);
            // 
            // rbtnInfinite
            // 
            this.rbtnInfinite.AutoSize = true;
            this.rbtnInfinite.Location = new System.Drawing.Point(245, 81);
            this.rbtnInfinite.Name = "rbtnInfinite";
            this.rbtnInfinite.Size = new System.Drawing.Size(56, 17);
            this.rbtnInfinite.TabIndex = 42;
            this.rbtnInfinite.TabStop = true;
            this.rbtnInfinite.Text = "Infinite";
            this.rbtnInfinite.UseVisualStyleBackColor = true;
            this.rbtnInfinite.CheckedChanged += new System.EventHandler(this.rbtnInfinite_CheckedChanged);
            // 
            // tbRepitions
            // 
            this.tbRepitions.Location = new System.Drawing.Point(268, 55);
            this.tbRepitions.Name = "tbRepitions";
            this.tbRepitions.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.tbRepitions.Size = new System.Drawing.Size(33, 20);
            this.tbRepitions.TabIndex = 43;
            this.tbRepitions.Text = "1";
            // 
            // btnStopBlockTransfer
            // 
            this.btnStopBlockTransfer.Location = new System.Drawing.Point(251, 104);
            this.btnStopBlockTransfer.Name = "btnStopBlockTransfer";
            this.btnStopBlockTransfer.Size = new System.Drawing.Size(46, 23);
            this.btnStopBlockTransfer.TabIndex = 46;
            this.btnStopBlockTransfer.Text = "Stop";
            this.btnStopBlockTransfer.UseVisualStyleBackColor = true;
            this.btnStopBlockTransfer.Click += new System.EventHandler(this.btnStopBlockTransfer_Click);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(135, 16);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(86, 13);
            this.label10.TabIndex = 47;
            this.label10.Text = "Block LoopBack";
            // 
            // btnResetBlock
            // 
            this.btnResetBlock.Location = new System.Drawing.Point(349, 173);
            this.btnResetBlock.Name = "btnResetBlock";
            this.btnResetBlock.Size = new System.Drawing.Size(39, 20);
            this.btnResetBlock.TabIndex = 50;
            this.btnResetBlock.Text = "Rst";
            this.btnResetBlock.UseVisualStyleBackColor = true;
            this.btnResetBlock.Click += new System.EventHandler(this.btnResetBlock_Click);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(50, 230);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(50, 13);
            this.label11.TabIndex = 51;
            this.label11.Text = "Switches";
            // 
            // lLabelSwitch1
            // 
            this.lLabelSwitch1.AutoSize = true;
            this.lLabelSwitch1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lLabelSwitch1.Location = new System.Drawing.Point(12, 30);
            this.lLabelSwitch1.Name = "lLabelSwitch1";
            this.lLabelSwitch1.Size = new System.Drawing.Size(0, 13);
            this.lLabelSwitch1.TabIndex = 52;
            // 
            // lLabelSwitch2
            // 
            this.lLabelSwitch2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lLabelSwitch2.Location = new System.Drawing.Point(87, 29);
            this.lLabelSwitch2.Name = "lLabelSwitch2";
            this.lLabelSwitch2.Size = new System.Drawing.Size(65, 39);
            this.lLabelSwitch2.TabIndex = 0;
            // 
            // btnResetTriggerOut
            // 
            this.btnResetTriggerOut.Location = new System.Drawing.Point(56, 73);
            this.btnResetTriggerOut.Name = "btnResetTriggerOut";
            this.btnResetTriggerOut.Size = new System.Drawing.Size(34, 23);
            this.btnResetTriggerOut.TabIndex = 53;
            this.btnResetTriggerOut.Text = "Rst";
            this.btnResetTriggerOut.UseVisualStyleBackColor = true;
            this.btnResetTriggerOut.Click += new System.EventHandler(this.btnResetTriggerOut_Click);
            // 
            // gbTriggerOut
            // 
            this.gbTriggerOut.Controls.Add(this.btnResetTriggerOut);
            this.gbTriggerOut.Controls.Add(this.lLabelSwitch1);
            this.gbTriggerOut.Controls.Add(this.lLabelSwitch2);
            this.gbTriggerOut.Location = new System.Drawing.Point(10, 250);
            this.gbTriggerOut.Name = "gbTriggerOut";
            this.gbTriggerOut.Size = new System.Drawing.Size(158, 111);
            this.gbTriggerOut.TabIndex = 54;
            this.gbTriggerOut.TabStop = false;
            this.gbTriggerOut.Text = "Switch Controls";
            // 
            // gbTransferControl
            // 
            this.gbTransferControl.Controls.Add(this.btnTransferReset);
            this.gbTransferControl.Controls.Add(this.btnWriteMultiByte);
            this.gbTransferControl.Controls.Add(this.tbWriteMultiByte);
            this.gbTransferControl.Controls.Add(this.label1);
            this.gbTransferControl.Controls.Add(this.tbDataBytes);
            this.gbTransferControl.Controls.Add(this.label4);
            this.gbTransferControl.Controls.Add(this.btnWriteByte);
            this.gbTransferControl.Controls.Add(this.btnLoopBack);
            this.gbTransferControl.Controls.Add(this.label2);
            this.gbTransferControl.Controls.Add(this.tbNumBytes);
            this.gbTransferControl.Controls.Add(this.label3);
            this.gbTransferControl.Controls.Add(this.tbAddress);
            this.gbTransferControl.Location = new System.Drawing.Point(10, 51);
            this.gbTransferControl.Name = "gbTransferControl";
            this.gbTransferControl.Size = new System.Drawing.Size(436, 143);
            this.gbTransferControl.TabIndex = 55;
            this.gbTransferControl.TabStop = false;
            this.gbTransferControl.Text = "Transfer Controls";
            // 
            // btnTransferReset
            // 
            this.btnTransferReset.Location = new System.Drawing.Point(344, 115);
            this.btnTransferReset.Name = "btnTransferReset";
            this.btnTransferReset.Size = new System.Drawing.Size(35, 23);
            this.btnTransferReset.TabIndex = 13;
            this.btnTransferReset.Text = "Rst";
            this.btnTransferReset.UseVisualStyleBackColor = true;
            this.btnTransferReset.Click += new System.EventHandler(this.btnTransferReset_Click);
            // 
            // btnWriteMultiByte
            // 
            this.btnWriteMultiByte.Location = new System.Drawing.Point(15, 107);
            this.btnWriteMultiByte.Name = "btnWriteMultiByte";
            this.btnWriteMultiByte.Size = new System.Drawing.Size(75, 23);
            this.btnWriteMultiByte.TabIndex = 11;
            this.btnWriteMultiByte.Text = "Multi Byte";
            this.btnWriteMultiByte.UseVisualStyleBackColor = true;
            this.btnWriteMultiByte.Click += new System.EventHandler(this.btnWriteMultiByte_Click);
            // 
            // tbWriteMultiByte
            // 
            this.tbWriteMultiByte.Location = new System.Drawing.Point(79, 81);
            this.tbWriteMultiByte.Name = "tbWriteMultiByte";
            this.tbWriteMultiByte.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbWriteMultiByte.Size = new System.Drawing.Size(142, 20);
            this.tbWriteMultiByte.TabIndex = 10;
            this.tbWriteMultiByte.Text = "255";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnBlkCompare256);
            this.groupBox1.Controls.Add(this.btnUserBlk);
            this.groupBox1.Controls.Add(this.btnBlockSendRst);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this.label10);
            this.groupBox1.Controls.Add(this.tbBlockSend);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.tbBlockRcvAddress);
            this.groupBox1.Controls.Add(this.tbBlockCount);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.btnResetBlock);
            this.groupBox1.Controls.Add(this.btnBlkCompare8);
            this.groupBox1.Controls.Add(this.btnBlkCompare16);
            this.groupBox1.Controls.Add(this.tbBlockRcvLength);
            this.groupBox1.Controls.Add(this.tbRepitions);
            this.groupBox1.Controls.Add(this.btnStopBlockTransfer);
            this.groupBox1.Controls.Add(this.rbtnRepitions);
            this.groupBox1.Controls.Add(this.rbtnInfinite);
            this.groupBox1.Controls.Add(this.Length);
            this.groupBox1.Controls.Add(this.tbBlockThruPut);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.tbBlockRcv);
            this.groupBox1.Location = new System.Drawing.Point(10, 448);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(441, 228);
            this.groupBox1.TabIndex = 56;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Block Controls";
            // 
            // btnBlkCompare256
            // 
            this.btnBlkCompare256.Location = new System.Drawing.Point(140, 95);
            this.btnBlkCompare256.Name = "btnBlkCompare256";
            this.btnBlkCompare256.Size = new System.Drawing.Size(75, 23);
            this.btnBlkCompare256.TabIndex = 58;
            this.btnBlkCompare256.Text = "BLOCK 128";
            this.btnBlkCompare256.UseVisualStyleBackColor = true;
            this.btnBlkCompare256.Click += new System.EventHandler(this.btnBlkCompare256_Click);
            // 
            // btnUserBlk
            // 
            this.btnUserBlk.Location = new System.Drawing.Point(140, 124);
            this.btnUserBlk.Name = "btnUserBlk";
            this.btnUserBlk.Size = new System.Drawing.Size(75, 23);
            this.btnUserBlk.TabIndex = 57;
            this.btnUserBlk.Text = "USR BLCK";
            this.btnUserBlk.UseVisualStyleBackColor = true;
            this.btnUserBlk.Click += new System.EventHandler(this.btnUserBlk_Click);
            // 
            // btnBlockSendRst
            // 
            this.btnBlockSendRst.Location = new System.Drawing.Point(35, 173);
            this.btnBlockSendRst.Name = "btnBlockSendRst";
            this.btnBlockSendRst.Size = new System.Drawing.Size(38, 23);
            this.btnBlockSendRst.TabIndex = 53;
            this.btnBlockSendRst.Text = "Rst";
            this.btnBlockSendRst.UseVisualStyleBackColor = true;
            this.btnBlockSendRst.Click += new System.EventHandler(this.btnBlockSendRst_Click);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(11, 16);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(62, 13);
            this.label12.TabIndex = 52;
            this.label12.Text = "Block Send";
            // 
            // tbBlockSend
            // 
            this.tbBlockSend.Location = new System.Drawing.Point(11, 37);
            this.tbBlockSend.Multiline = true;
            this.tbBlockSend.Name = "tbBlockSend";
            this.tbBlockSend.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbBlockSend.Size = new System.Drawing.Size(100, 130);
            this.tbBlockSend.TabIndex = 51;
            // 
            // LEDBox
            // 
            this.LEDBox.Controls.Add(this.trkbrTimer);
            this.LEDBox.Controls.Add(this.btnCountDown);
            this.LEDBox.Controls.Add(this.btnCountUp);
            this.LEDBox.Controls.Add(this.btnShiftRight);
            this.LEDBox.Controls.Add(this.btnShiftLeft);
            this.LEDBox.Controls.Add(this.label13);
            this.LEDBox.Controls.Add(this.tbTimerValue);
            this.LEDBox.Controls.Add(this.btnRandom);
            this.LEDBox.Controls.Add(this.btnLEDReset);
            this.LEDBox.Controls.Add(this.btnTrigger4);
            this.LEDBox.Controls.Add(this.btnTrigger3);
            this.LEDBox.Controls.Add(this.btnTrigger2);
            this.LEDBox.Controls.Add(this.btnTrigger1);
            this.LEDBox.Controls.Add(this.label5);
            this.LEDBox.Location = new System.Drawing.Point(181, 218);
            this.LEDBox.Name = "LEDBox";
            this.LEDBox.Size = new System.Drawing.Size(270, 224);
            this.LEDBox.TabIndex = 67;
            this.LEDBox.TabStop = false;
            this.LEDBox.Text = "LED Controls";
            // 
            // trkbrTimer
            // 
            this.trkbrTimer.Location = new System.Drawing.Point(107, 62);
            this.trkbrTimer.Maximum = 65535;
            this.trkbrTimer.Name = "trkbrTimer";
            this.trkbrTimer.Orientation = System.Windows.Forms.Orientation.Vertical;
            this.trkbrTimer.Size = new System.Drawing.Size(45, 149);
            this.trkbrTimer.SmallChange = 100;
            this.trkbrTimer.TabIndex = 90;
            this.trkbrTimer.TickFrequency = 1000;
            this.trkbrTimer.Value = 65535;
            this.trkbrTimer.Scroll += new System.EventHandler(this.trkbrTimer_Scroll);
            // 
            // btnCountDown
            // 
            this.btnCountDown.Location = new System.Drawing.Point(7, 191);
            this.btnCountDown.Name = "btnCountDown";
            this.btnCountDown.Size = new System.Drawing.Size(65, 23);
            this.btnCountDown.TabIndex = 89;
            this.btnCountDown.Text = "Count Dn";
            this.btnCountDown.UseVisualStyleBackColor = true;
            this.btnCountDown.Click += new System.EventHandler(this.btnCountDown_Click);
            // 
            // btnCountUp
            // 
            this.btnCountUp.Location = new System.Drawing.Point(6, 149);
            this.btnCountUp.Name = "btnCountUp";
            this.btnCountUp.Size = new System.Drawing.Size(65, 23);
            this.btnCountUp.TabIndex = 88;
            this.btnCountUp.Text = "Count Up";
            this.btnCountUp.UseVisualStyleBackColor = true;
            this.btnCountUp.Click += new System.EventHandler(this.btnCountUp_Click);
            // 
            // btnShiftRight
            // 
            this.btnShiftRight.Location = new System.Drawing.Point(6, 106);
            this.btnShiftRight.Name = "btnShiftRight";
            this.btnShiftRight.Size = new System.Drawing.Size(65, 23);
            this.btnShiftRight.TabIndex = 87;
            this.btnShiftRight.Text = "Shift Right";
            this.btnShiftRight.UseVisualStyleBackColor = true;
            this.btnShiftRight.Click += new System.EventHandler(this.btnShiftRight_Click);
            // 
            // btnShiftLeft
            // 
            this.btnShiftLeft.Location = new System.Drawing.Point(4, 77);
            this.btnShiftLeft.Name = "btnShiftLeft";
            this.btnShiftLeft.Size = new System.Drawing.Size(65, 23);
            this.btnShiftLeft.TabIndex = 86;
            this.btnShiftLeft.Text = "Shift Left";
            this.btnShiftLeft.UseVisualStyleBackColor = true;
            this.btnShiftLeft.Click += new System.EventHandler(this.btnShiftLeft_Click);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(72, 1);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(91, 13);
            this.label13.TabIndex = 85;
            this.label13.Text = "Enter Timer Value";
            // 
            // tbTimerValue
            // 
            this.tbTimerValue.Location = new System.Drawing.Point(172, 123);
            this.tbTimerValue.Name = "tbTimerValue";
            this.tbTimerValue.Size = new System.Drawing.Size(65, 20);
            this.tbTimerValue.TabIndex = 84;
            this.tbTimerValue.Text = "65535";
            this.tbTimerValue.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // btnRandom
            // 
            this.btnRandom.Location = new System.Drawing.Point(6, 48);
            this.btnRandom.Name = "btnRandom";
            this.btnRandom.Size = new System.Drawing.Size(65, 23);
            this.btnRandom.TabIndex = 83;
            this.btnRandom.Text = "Random";
            this.btnRandom.UseVisualStyleBackColor = true;
            this.btnRandom.Click += new System.EventHandler(this.btnRandom_Click);
            // 
            // btnLEDReset
            // 
            this.btnLEDReset.Location = new System.Drawing.Point(182, 51);
            this.btnLEDReset.Name = "btnLEDReset";
            this.btnLEDReset.Size = new System.Drawing.Size(32, 23);
            this.btnLEDReset.TabIndex = 69;
            this.btnLEDReset.Text = "Rst";
            this.btnLEDReset.UseVisualStyleBackColor = true;
            this.btnLEDReset.Click += new System.EventHandler(this.btnLEDReset_Click);
            // 
            // btnTrigger4
            // 
            this.btnTrigger4.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTrigger4.Location = new System.Drawing.Point(230, 16);
            this.btnTrigger4.Name = "btnTrigger4";
            this.btnTrigger4.Size = new System.Drawing.Size(23, 23);
            this.btnTrigger4.TabIndex = 68;
            this.btnTrigger4.Text = "4";
            this.btnTrigger4.UseVisualStyleBackColor = true;
            this.btnTrigger4.Click += new System.EventHandler(this.btnTrigger4_Click);
            // 
            // btnTrigger3
            // 
            this.btnTrigger3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTrigger3.Location = new System.Drawing.Point(201, 16);
            this.btnTrigger3.Name = "btnTrigger3";
            this.btnTrigger3.Size = new System.Drawing.Size(23, 23);
            this.btnTrigger3.TabIndex = 67;
            this.btnTrigger3.Text = "3";
            this.btnTrigger3.UseVisualStyleBackColor = true;
            this.btnTrigger3.Click += new System.EventHandler(this.btnTrigger3_Click);
            // 
            // btnTrigger2
            // 
            this.btnTrigger2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTrigger2.Location = new System.Drawing.Point(172, 16);
            this.btnTrigger2.Name = "btnTrigger2";
            this.btnTrigger2.Size = new System.Drawing.Size(23, 23);
            this.btnTrigger2.TabIndex = 66;
            this.btnTrigger2.Text = "2";
            this.btnTrigger2.UseVisualStyleBackColor = true;
            this.btnTrigger2.Click += new System.EventHandler(this.btnTrigger2_Click);
            // 
            // btnTrigger1
            // 
            this.btnTrigger1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTrigger1.Location = new System.Drawing.Point(143, 16);
            this.btnTrigger1.Name = "btnTrigger1";
            this.btnTrigger1.Size = new System.Drawing.Size(22, 23);
            this.btnTrigger1.TabIndex = 65;
            this.btnTrigger1.Text = "1";
            this.btnTrigger1.UseVisualStyleBackColor = true;
            this.btnTrigger1.Click += new System.EventHandler(this.btnTrigger1_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(17, 16);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(35, 13);
            this.label5.TabIndex = 17;
            this.label5.Text = "LED\'s";
            // 
            // EPT_Transfer_Demo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(463, 733);
            this.Controls.Add(this.LEDBox);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.cmbDevList);
            this.Controls.Add(this.btnOk);
            this.Controls.Add(this.btnCloseDevice);
            this.Controls.Add(this.btnOpenDevice);
            this.Controls.Add(this.gbTransferControl);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.gbTriggerOut);
            this.Name = "EPT_Transfer_Demo";
            this.Text = "EPT_Transfer_Demo";
            this.Load += new System.EventHandler(this.EPT_Transfer_Demo_Load);
            this.gbTriggerOut.ResumeLayout(false);
            this.gbTriggerOut.PerformLayout();
            this.gbTransferControl.ResumeLayout(false);
            this.gbTransferControl.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.LEDBox.ResumeLayout(false);
            this.LEDBox.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.trkbrTimer)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cmbDevList;
        private System.Windows.Forms.Button btnOpenDevice;
        private System.Windows.Forms.Button btnCloseDevice;
        private System.Windows.Forms.Button btnWriteByte;
        private System.Windows.Forms.TextBox tbNumBytes;
        private System.Windows.Forms.Button btnLoopBack;
        private System.Windows.Forms.TextBox tbAddress;
        private System.Windows.Forms.TextBox tbDataBytes;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox tbBlockRcv;
        private System.Windows.Forms.Button btnBlkCompare8;
        private System.Windows.Forms.Button btnBlkCompare16;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox tbBlockRcvAddress;
        private System.Windows.Forms.Label Length;
        private System.Windows.Forms.TextBox tbBlockRcvLength;
        private System.Windows.Forms.TextBox tbBlockThruPut;
        private System.Windows.Forms.TextBox tbBlockCount;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.RadioButton rbtnRepitions;
        private System.Windows.Forms.RadioButton rbtnInfinite;
        private System.Windows.Forms.TextBox tbRepitions;
        private System.Windows.Forms.Button btnStopBlockTransfer;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button btnResetBlock;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label lLabelSwitch1;
        private System.Windows.Forms.Label lLabelSwitch2;
        private System.Windows.Forms.Button btnResetTriggerOut;
        private System.Windows.Forms.GroupBox gbTriggerOut;
        private System.Windows.Forms.GroupBox gbTransferControl;
        private System.Windows.Forms.TextBox tbWriteMultiByte;
        private System.Windows.Forms.Button btnWriteMultiByte;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnTransferReset;
        protected internal System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button btnBlockSendRst;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox tbBlockSend;
        private System.Windows.Forms.Button btnUserBlk;
        private System.Windows.Forms.GroupBox LEDBox;
        private System.Windows.Forms.TrackBar trkbrTimer;
        private System.Windows.Forms.Button btnCountDown;
        private System.Windows.Forms.Button btnCountUp;
        private System.Windows.Forms.Button btnShiftRight;
        private System.Windows.Forms.Button btnShiftLeft;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox tbTimerValue;
        private System.Windows.Forms.Button btnRandom;
        private System.Windows.Forms.Button btnLEDReset;
        private System.Windows.Forms.Button btnTrigger4;
        private System.Windows.Forms.Button btnTrigger3;
        private System.Windows.Forms.Button btnTrigger2;
        private System.Windows.Forms.Button btnTrigger1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnBlkCompare256;
    }
}

