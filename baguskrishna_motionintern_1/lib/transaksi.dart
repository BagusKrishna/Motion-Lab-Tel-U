import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class transaksi extends StatelessWidget {
  const transaksi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 26),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row( //appbar
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.chevron_left_outlined,
                        size: 30,

                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 58,
                        height: 59,
                        child: Image.asset("assets/LOGO_STARBUK.png"),
                      ),
                      Icon(
                        Icons.ios_share_rounded,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 51,
                  ),
                  Container( //Container BAGIAN ATAS
                    padding :  EdgeInsets.symmetric(horizontal: 22.57,vertical: 22.57),
                    height: 326.87,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration( // atur shadow
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1), 
                          spreadRadius: 5, 
                          blurRadius: 20,   
                          offset: Offset(0, 7), // (x, y)
                        ),
                      ],
                    ),
                    child : Column(
                      children : [
                        Container( //container Sukses
                          
                          child : Column(
                            children: [
                              Image.asset(
                              'assets/sukses.png',
                              alignment: Alignment.center,
                              width: 63.19,
                              height: 63.19,
                              ),
                              SizedBox(
                                height : 18.06,
                              ),
                              Text(
                                'Transaksi Berhasil',
                                textAlign: TextAlign.center,
                                style : GoogleFonts.poppins(
                                  fontSize: 18.06,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height : 6.03,
                              ),
                              Text(
                                'Rp. 58,000',
                                textAlign: TextAlign.center,
                                style : GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 27.08,
                                ),
                              ),
                            ]
                          ),
                        ),
                        // SizedBox(
                        //   height : 8.03,
                        // ),
                        Divider(
                          color: Colors.black.withOpacity(0.07),
                          thickness: 1.13,   // tebel
                          height: 16.93,
                        ),
                        SizedBox(
                          height : 9.03,
                        ),
                        
                        Container(  //Container Invoice
                          child : Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children : [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Invoice Number',
                                    style : GoogleFonts.poppins(
                                      fontSize: 13.54,
                                      color: Colors.black.withOpacity(0.54),
                                    ),
                                  ),
                                  Text(
                                      '000085752257',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13.54,
                                        color: Colors.black.withOpacity(0.75),
                                        fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tanggal Transaksi',
                                    style : GoogleFonts.poppins(
                                      fontSize: 13.54,
                                      color: Colors.black.withOpacity(0.54),
                                    ),
                                  ),
                                  Text(
                                      '16 Juni 2023',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13.54,
                                        color: Colors.black.withOpacity(0.75),
                                        fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jenis Pembayaran',
                                       style : GoogleFonts.poppins(
                                      fontSize: 13.54,
                                      color: Colors.black.withOpacity(0.54),
                                    ),
                                  ),
                                  Text(
                                      'QRIS',
                                       style : GoogleFonts.poppins(
                                      fontSize: 13.54,
                                      color: Colors.black.withOpacity(0.75),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                            
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height : 40,
                  ),
                  Container( //Container BAGIAN BAWAH
                    padding :  EdgeInsets.symmetric(horizontal: 20,vertical: 31.5),
                    height: 188,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1), 
                          spreadRadius: 5, 
                          blurRadius: 20,   
                          offset: Offset(0, 7), // (x, y)
                        ),
                      ],
                    ),
                    child : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container( //container detail pesanan
                          child : Text(
                            
                            'Detail Pesanan',
                            //textAlign: TextAlign.left,
                            style : GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height : 15,
                        ),
                        Container(
                          child : Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jenis Pesanan',
                                    style : GoogleFonts.poppins(
                                      color: Colors.black.withOpacity(0.54),
                                      fontSize : 12,
                                    ),
                                    
                                  ),
                                  Text(
                                    '2x Frappucino - Monte',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black.withOpacity(0.75),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                               SizedBox(
                                height :14,
                               ),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Nama Pemesan',
                                    style : GoogleFonts.poppins(
                                      color: Colors.black.withOpacity(0.54),
                                      fontSize : 12,
                                    ),
                                    
                                  ),
                                  Text(
                                    'Asep Knalpot',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black.withOpacity(0.75),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                               SizedBox(
                                height :14,
                               ),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Pesanan',
                                    style : GoogleFonts.poppins(
                                      color: Colors.black.withOpacity(0.54),
                                      fontSize : 12,
                                    ),
                                    
                                  ),
                                  Text(
                                    'Rp. 58,000',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black.withOpacity(0.75),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                       

                      ],
                    ),
                  ),
                  SizedBox(
                    height : 51,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      print('Anjay');
                    }, 
                    style : ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(16), 
                      minimumSize: Size(double.infinity, 55),
                      backgroundColor: Color(0xFF00623B), 
                    ),
                    child: Text(
                      'Download E - Ticket',
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color : Colors.white,
                      ),
                    ),
                    
                    ),
                    SizedBox(
                      height : 20,
                    ),
                  
                ],
              ),
            ),
          ),
        ),
    );
  }
}