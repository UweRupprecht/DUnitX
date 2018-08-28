unit DUnitX.InternalDataProvider;

interface
uses
  DUnitX.Types;

<<<<<<< HEAD
Type
  ITestDataProvider = interface
    ['{1BFC9318-AF52-41BB-82D4-58166429885A}']
    function GetCaseCount(Methodname:string):integer;
    function GetCaseName(Methodname:string):String;
    function GetCaseParams(Methodname:string;casenr:integer):TValuearray;
  end;

  TTestDataProvider = Class abstract (TInterfacedObject,ITestDataProvider)
    private
    protected
    public
      Constructor Create;virtual;Abstract;
      function GetCaseCount(Methodname:string):integer;Virtual;Abstract;
      function GetCaseName(Methodname:string):String;Virtual;Abstract;
      function GetCaseParams(Methodname:string;casenr:integer):TValuearray;Virtual;Abstract;
      Destructor Destroy;virtual;Abstract;
  End;
=======
type
  ITestDataProvider = interface
    ['{1BFC9318-AF52-41BB-82D4-58166429885A}']
    function GetCaseCount(const methodName : string): integer;
    function GetCaseName(const methodName : string) : string;
    function GetCaseParams(const methodName : string; const caseNumber : integer) : TValuearray;
  end;

  TTestDataProvider = class(TInterfacedObject,ITestDataProvider)
  public
    constructor Create;virtual;abstract;
    function GetCaseCount(const methodName : string) : integer;virtual;abstract;
    function GetCaseName(const methodName : string) : string;virtual;abstract;
    function GetCaseParams(const methodName : string ; const caseNumber : integer) : TValuearray;virtual;abstract;
  End;

>>>>>>> upstream/master
  TTestDataProviderClass = class of TTestDataProvider;


implementation

end.
