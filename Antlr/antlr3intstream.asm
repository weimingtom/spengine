﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\Users\pa\repos\spengine\Antlr\antlr3intstream.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	_antlr3IntStreamNew
EXTRN	__imp__calloc:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\users\pa\repos\spengine\antlr\antlr3intstream.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _antlr3IntStreamNew
_TEXT	SEGMENT
_stream$ = -8						; size = 4
_antlr3IntStreamNew PROC				; COMDAT
; Line 42
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 47
	mov	esi, esp
	push	64					; 00000040H
	push	1
	call	DWORD PTR __imp__calloc
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _stream$[ebp], eax
; Line 49
	cmp	DWORD PTR _stream$[ebp], 0
	jne	SHORT $LN1@antlr3IntS
; Line 51
	xor	eax, eax
	jmp	SHORT $LN2@antlr3IntS
$LN1@antlr3IntS:
; Line 54
	mov	eax, DWORD PTR _stream$[ebp]
	mov	DWORD PTR [eax+60], OFFSET _freeStream
; Line 56
	mov	eax, DWORD PTR _stream$[ebp]
$LN2@antlr3IntS:
; Line 57
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_antlr3IntStreamNew ENDP
_TEXT	ENDS
EXTRN	__imp__free:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _freeStream
_TEXT	SEGMENT
_stream$ = 8						; size = 4
_freeStream PROC					; COMDAT
; Line 61
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 62
	mov	esi, esp
	mov	eax, DWORD PTR _stream$[ebp]
	push	eax
	call	DWORD PTR __imp__free
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 63
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_freeStream ENDP
_TEXT	ENDS
END
