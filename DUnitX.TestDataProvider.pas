(*
****************************************************************
* Unit:		      DUnitX.TestDataProvider
* Area:	      	TestCases
* Author:	      Uwe Rupprecht
* Purpose:      Base Class and Factory for TestDataProvider
* Version:	    1.0.0.0
* Last Change:	16.08.2018 15:25
* History:      -
****************************************************************
* This Source Code Form is subject to the terms of the
* Mozilla Public License, v. 2.0. If a copy of the MPL was not
* distributed with this file, You can obtain one at
* https://mozilla.org/MPL/2.0/.
****************************************************************
*)
unit DUnitX.TestDataProvider;

interface
<<<<<<< HEAD
=======

>>>>>>> upstream/master
uses
  System.Classes,
  System.Generics.Collections,
  DUnitX.Types,
  DUnitX.InternalDataProvider;

<<<<<<< HEAD
TYPE

  TestDataProviderManager = Class
    private
      class var flist : TDictionary<STRING,TClass>;
    protected
    public
       Class Constructor Create;
       Class Destructor Destroy;

       Class Procedure RegisterProvider(Name:string;AClass : TTestDataProviderClass);
       Class Procedure UnregisterProvider(name:string);

       Class function GetProvider(Name:string):ITestDataProvider;overload;
       Class function GetProvider(AClass:TTestDataProviderClass):ITestDataProvider;overload;
    published
  End;
=======
type
  TestDataProviderManager = class
  private
    class var FList : TDictionary<string, TClass>;
  public
    class constructor Create;
    class destructor Destroy;

    class procedure RegisterProvider(const name : string; const AClass : TTestDataProviderClass);
    class procedure UnregisterProvider(const name : string);

    class function GetProvider(const name : string) : ITestDataProvider;overload;
    class function GetProvider(const AClass:TTestDataProviderClass) : ITestDataProvider;overload;
  end;

>>>>>>> upstream/master
implementation

{ TestDataProviderManager }

class constructor TestDataProviderManager.Create;
begin
<<<<<<< HEAD
  flist := TDictionary<STRING,TClass>.Create;
=======
  FList := TDictionary<string, TClass>.Create;
>>>>>>> upstream/master
end;

class Destructor TestDataProviderManager.Destroy;
begin
<<<<<<< HEAD
  flist.Free;
end;

class function TestDataProviderManager.GetProvider(AClass: TTestDataProviderClass): ITestDataProvider;
var
  key : string;
begin
  result := NIL;
  if (flist.ContainsValue(AClass)) then
=======
  FList.Free;
end;

class function TestDataProviderManager.GetProvider(const AClass: TTestDataProviderClass) : ITestDataProvider;
var
  key : string;
begin
  result := nil;
  if (FList.ContainsValue(AClass)) then
>>>>>>> upstream/master
  begin
    for key in flist.keys do
    begin
      if (flist[key] = AClass) then
      begin
        result := TTestDataProviderClass(flist[key]).Create;
        break;
      end;
    end;
  end;
end;

<<<<<<< HEAD
Class function TestDataProviderManager.GetProvider(Name: string): ITestDataProvider;
begin
  result := NIL;
  if (flist.ContainsKey(Name)) then
    result := TTestDataProviderClass(flist[Name]).Create;
end;

Class procedure TestDataProviderManager.RegisterProvider(Name: string;
  AClass: TTestDataProviderClass);
begin
  if (not flist.ContainsKey(Name)) then
    flist.add(Name,AClass);
end;

Class procedure TestDataProviderManager.UnregisterProvider(name: string);
begin
 if (flist.ContainsKey(name)) then
    flist.Remove(Name);
=======
class function TestDataProviderManager.GetProvider(const name : string) : ITestDataProvider;
begin
  result := nil;
  if (FList.ContainsKey(name)) then
    result := TTestDataProviderClass(FList[name]).Create;
end;

class procedure TestDataProviderManager.RegisterProvider(const name: string; const AClass: TTestDataProviderClass);
begin
  if (not FList.ContainsKey(name)) then
    FList.add(name,AClass);
end;

class procedure TestDataProviderManager.UnregisterProvider(const name: string);
begin
 if (FList.ContainsKey(name)) then
    FList.Remove(Name);
>>>>>>> upstream/master
end;

end.
