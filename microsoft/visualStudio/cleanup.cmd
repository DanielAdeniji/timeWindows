@echo off
call softLinksRemove.cmd

if exist _stage del  _stage /S /Q

if exist _stage rd   _stage /Q

if exist bin    del  bin /S /Q

if exist bin    rd   bin  /Q