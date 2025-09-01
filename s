warning: in the working copy of 'packages/components/src/form-token-field/index.tsx', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/packages/components/src/form-token-field/index.tsx b/packages/components/src/form-token-field/index.tsx[m
[1mindex 8bd9afdc68..44ec1803f1 100644[m
[1m--- a/packages/components/src/form-token-field/index.tsx[m
[1m+++ b/packages/components/src/form-token-field/index.tsx[m
[36m@@ -1,9 +1,15 @@[m
[32m+[m[32m/**[m
[32m+[m[32m * External dependencies[m
[32m+[m[32m */[m
 /**[m
  * External dependencies[m
  */[m
 import clsx from 'clsx';[m
 import type { KeyboardEvent, MouseEvent, TouchEvent, FocusEvent } from 'react';[m
 [m
[32m+[m[32m/**[m
[32m+[m[32m * WordPress dependencies[m
[32m+[m[32m */[m
 /**[m
  * WordPress dependencies[m
  */[m
[36m@@ -14,6 +20,9 @@[m [mimport { speak } from '@wordpress/a11y';[m
 import isShallowEqual from '@wordpress/is-shallow-equal';[m
 import deprecated from '@wordpress/deprecated';[m
 [m
[32m+[m[32m/**[m
[32m+[m[32m * Internal dependencies[m
[32m+[m[32m */[m
 /**[m
  * Internal dependencies[m
  */[m
[36m@@ -32,7 +41,7 @@[m [mimport { useDeprecated36pxDefaultSizeProp } from '../utils/use-deprecated-props'[m
 import { withIgnoreIMEEvents } from '../utils/with-ignore-ime-events';[m
 import { maybeWarnDeprecated36pxSize } from '../utils/deprecated-36px-size';[m
 [m
[31m-const identity = (value: string) => value;[m
[32m+[m[32mconst identity = ( value: string ) => value;[m
 [m
 /**[m
  * A `FormTokenField` is a field similar to the tags and categories fields in the interim editor chrome,[m
[36m@@ -44,30 +53,30 @@[m [mconst identity = (value: string) => value;[m
  * The `value` property is handled in a manner similar to controlled form components.[m
  * See [Forms](https://react.dev/reference/react-dom/components#form-components) in the React Documentation for more information.[m
  */[m
[31m-export function FormTokenField(props: FormTokenFieldProps) {[m
[32m+[m[32mexport function FormTokenField( props: FormTokenFieldProps ) {[m
 	const {[m
 		autoCapitalize,[m
 		autoComplete,[m
 		maxLength,[m
 		placeholder,[m
[31m-		label = __('Add item'),[m
[32m+[m		[32mlabel = __( 'Add item' ),[m
 		className,[m
 		suggestions = [],[m
 		maxSuggestions = 100,[m
 		value = [],[m
 		displayTransform = identity,[m
[31m-		saveTransform = (token) => token.trim(),[m
[31m-		onChange = () => { },[m
[31m-		onInputChange = () => { },[m
[32m+[m		[32msaveTransform = ( token ) => token.trim(),[m
[32m+[m		[32monChange = () => {},[m
[32m+[m		[32monInputChange = () => {},[m
 		onFocus = undefined,[m
 		isBorderless = false,[m
 		disabled = false,[m
 		tokenizeOnSpace = false,[m
 		messages = {[m
[31m-			added: __('Item added.'),[m
[31m-			removed: __('Item removed.'),[m
[31m-			remove: __('Remove item'),[m
[31m-			__experimentalInvalid: __('Invalid item'),[m
[32m+[m			[32madded: __( 'Item added.' ),[m
[32m+[m			[32mremoved: __( 'Item removed.' ),[m
[32m+[m			[32mremove: __( 'Remove item' ),[m
[32m+[m			[32m__experimentalInvalid: __( 'Invalid item' ),[m
 		},[m
 		__experimentalRenderItem,[m
 		__experimentalExpandOnFocus = false,[m
[36m@@ -77,76 +86,77 @@[m [mexport function FormTokenField(props: FormTokenFieldProps) {[m
 		__experimentalAutoSelectFirstMatch = false,[m
 		__nextHasNoMarginBottom = false,[m
 		tokenizeOnBlur = false,[m
[31m-	} = useDeprecated36pxDefaultSizeProp<FormTokenFieldProps>(props);[m
[32m+[m	[32m} = useDeprecated36pxDefaultSizeProp< FormTokenFieldProps >( props );[m
 [m
[31m-	if (!__nextHasNoMarginBottom) {[m
[31m-		deprecated('Bottom margin styles for wp.components.FormTokenField', {[m
[32m+[m	[32mif ( ! __nextHasNoMarginBottom ) {[m
[32m+[m		[32mdeprecated( 'Bottom margin styles for wp.components.FormTokenField', {[m
 			since: '6.7',[m
 			version: '7.0',[m
 			hint: 'Set the `__nextHasNoMarginBottom` prop to true to start opting into the new styles, which will become the default in a future version.',[m
[31m-		});[m
[32m+[m		[32m} );[m
 	}[m
 [m
[31m-	maybeWarnDeprecated36pxSize({[m
[32m+[m	[32mmaybeWarnDeprecated36pxSize( {[m
 		componentName: 'FormTokenField',[m
 		size: undefined,[m
 		__next40pxDefaultSize,[m
[31m-	});[m
[32m+[m	[32m} );[m
 [m
[31m-	const instanceId = useInstanceId(FormTokenField);[m
[32m+[m	[32mconst instanceId = useInstanceId( FormTokenField );[m
 [m
 	// We reset to these initial values again in the onBlur[m
[31m-	const [incompleteTokenValue, setIncompleteTokenValue] = useState('');[m
[31m-	const [inputOffsetFromEnd, setInputOffsetFromEnd] = useState(0);[m
[31m-	const [isActive, setIsActive] = useState(false);[m
[31m-	const [isExpanded, setIsExpanded] = useState(false);[m
[31m-	const [selectedSuggestionIndex, setSelectedSuggestionIndex] =[m
[31m-		useState(-1);[m
[31m-	const [selectedSuggestionScroll, setSelectedSuggestionScroll] =[m
[31m-		useState(false);[m
[32m+[m	[32mconst [ incompleteTokenValue, setIncompleteTokenValue ] = useState( '' );[m
[32m+[m	[32mconst [ inputOffsetFromEnd, setInputOffsetFromEnd ] = useState( 0 );[m
[32m+[m	[32mconst [ isActive, setIsActive ] = useState( false );[m
[32m+[m	[32mconst [ isExpanded, setIsExpanded ] = useState( false );[m
[32m+[m	[32mconst [ selectedSuggestionIndex, setSelectedSuggestionIndex ] =[m
[32m+[m		[32museState( -1 );[m
[32m+[m	[32mconst [ selectedSuggestionScroll, setSelectedSuggestionScroll ] =[m
[32m+[m		[32museState( false );[m
[32m+[m
[32m+[m	[32mconst [ isValidating, setIsValidating ] = useState( false );[m
 [m
[31m-	const [isValidating, setIsValidating] = useState(false);[m
[31m-	const [asyncError, setAsyncError] = useState<string | null>(null);[m
[32m+[m	[32mconst [ asyncError, setAsyncError ] = useState< string | null >( null );[m
 [m
[31m-	const prevSuggestions = usePrevious<string[]>(suggestions);[m
[31m-	const prevValue = usePrevious<(string | TokenItem)[]>(value);[m
[32m+[m	[32mconst prevSuggestions = usePrevious< string[] >( suggestions );[m
[32m+[m	[32mconst prevValue = usePrevious< ( string | TokenItem )[] >( value );[m
 [m
[31m-	const input = useRef<HTMLInputElement>(null);[m
[31m-	const tokensAndInput = useRef<HTMLInputElement>(null);[m
[32m+[m	[32mconst input = useRef< HTMLInputElement >( null );[m
[32m+[m	[32mconst tokensAndInput = useRef< HTMLInputElement >( null );[m
 [m
[31m-	const debouncedSpeak = useDebounce(speak, 500);[m
[32m+[m	[32mconst debouncedSpeak = useDebounce( speak, 500 );[m
 [m
[31m-	useEffect(() => {[m
[32m+[m	[32museEffect( () => {[m
 		// Make sure to focus the input when the isActive state is true.[m
[31m-		if (isActive && !hasFocus()) {[m
[32m+[m		[32mif ( isActive && ! hasFocus() ) {[m
 			focus();[m
 		}[m
[31m-	}, [isActive]);[m
[32m+[m	[32m}, [ isActive ] );[m
 [m
[31m-	useEffect(() => {[m
[31m-		const suggestionsDidUpdate = !isShallowEqual([m
[32m+[m	[32museEffect( () => {[m
[32m+[m		[32mconst suggestionsDidUpdate = ! isShallowEqual([m
 			suggestions,[m
 			prevSuggestions || [][m
 		);[m
 [m
[31m-		if (suggestionsDidUpdate || value !== prevValue) {[m
[31m-			updateSuggestions(suggestionsDidUpdate);[m
[32m+[m		[32mif ( suggestionsDidUpdate || value !== prevValue ) {[m
[32m+[m			[32mupdateSuggestions( suggestionsDidUpdate );[m
 		}[m
 [m
 		// TODO: updateSuggestions() should first be refactored so its actual deps are clearer.[m
[31m-	}, [suggestions, prevSuggestions, value, prevValue]);[m
[32m+[m	[32m}, [ suggestions, prevSuggestions, value, prevValue ] );[m
 [m
[31m-	useEffect(() => {[m
[32m+[m	[32museEffect( () => {[m
 		updateSuggestions();[m
[31m-	}, [incompleteTokenValue]);[m
[32m+[m	[32m}, [ incompleteTokenValue ] );[m
 [m
[31m-	useEffect(() => {[m
[32m+[m	[32museEffect( () => {[m
 		updateSuggestions();[m
[31m-	}, [__experimentalAutoSelectFirstMatch]);[m
[32m+[m	[32m}, [ __experimentalAutoSelectFirstMatch ] );[m
 [m
[31m-	if (disabled && isActive) {[m
[31m-		setIsActive(false);[m
[31m-		setIncompleteTokenValue('');[m
[32m+[m	[32mif ( disabled && isActive ) {[m
[32m+[m		[32msetIsActive( false );[m
[32m+[m		[32msetIncompleteTokenValue( '' );[m
 	}[m
 [m
 	function focus() {[m
[36m@@ -157,66 +167,66 @@[m [mexport function FormTokenField(props: FormTokenFieldProps) {[m
 		return input.current === input.current?.ownerDocument.activeElement;[m
 	}[m
 [m
[31m-	function onFocusHandler(event: FocusEvent) {[m
[32m+[m	[32mfunction onFocusHandler( event: FocusEvent ) {[m
 		// If focus is on the input or on the container, set the isActive state to true.[m
[31m-		if (hasFocus() || event.target === tokensAndInput.current) {[m
[31m-			setIsActive(true);[m
[31m-			setIsExpanded(__experimentalExpandOnFocus || isExpanded);[m
[32m+[m		[32mif ( hasFocus() || event.target === tokensAndInput.current ) {[m
[32m+[m			[32msetIsActive( true );[m
[32m+[m			[32msetIsExpanded( __experimentalExpandOnFocus || isExpanded );[m
 		} else {[m
 			/*[m
 			 * Otherwise, focus is on one of the token "remove" buttons and we[m
 			 * set the isActive state to false to prevent the input to be[m
 			 * re-focused, see componentDidUpdate().[m
 			 */[m
[31m-			setIsActive(false);[m
[32m+[m			[32msetIsActive( false );[m
 		}[m
 [m
[31m-		if ('function' === typeof onFocus) {[m
[31m-			onFocus(event);[m
[32m+[m		[32mif ( 'function' === typeof onFocus ) {[m
[32m+[m			[32monFocus( event );[m
 		}[m
 	}[m
 [m
[31m-	function onBlur(event: FocusEvent) {[m
[32m+[m	[32mfunction onBlur( event: FocusEvent ) {[m
 		if ([m
 			inputHasValidValue() &&[m
[31m-			__experimentalValidateInput(incompleteTokenValue)[m
[32m+[m			[32m__experimentalValidateInput( incompleteTokenValue )[m
 		) {[m
[31m-			setIsActive(false);[m
[31m-			if (tokenizeOnBlur && inputHasValidValue()) {[m
[31m-				addNewToken(incompleteTokenValue);[m
[32m+[m			[32msetIsActive( false );[m
[32m+[m			[32mif ( tokenizeOnBlur && inputHasValidValue() ) {[m
[32m+[m				[32maddNewToken( incompleteTokenValue );[m
 			}[m
 		} else {[m
 			// Reset to initial state[m
[31m-			setIncompleteTokenValue('');[m
[31m-			setInputOffsetFromEnd(0);[m
[31m-			setIsActive(false);[m
[32m+[m			[32msetIncompleteTokenValue( '' );[m
[32m+[m			[32msetInputOffsetFromEnd( 0 );[m
[32m+[m			[32msetIsActive( false );[m
 [m
[31m-			if (__experimentalExpandOnFocus) {[m
[32m+[m			[32mif ( __experimentalExpandOnFocus ) {[m
 				// If `__experimentalExpandOnFocus` is true, don't close the suggestions list when[m
 				// the user clicks on it (`tokensAndInput` will be the element that caused the blur).[m
 				const hasFocusWithin =[m
 					event.relatedTarget === tokensAndInput.current;[m
[31m-				setIsExpanded(hasFocusWithin);[m
[32m+[m				[32msetIsExpanded( hasFocusWithin );[m
 			} else {[m
 				// Else collapse the suggestion list. This will result in the suggestion list closing[m
 				// after a suggestion has been submitted since that causes a blur.[m
[31m-				setIsExpanded(false);[m
[32m+[m				[32msetIsExpanded( false );[m
 			}[m
 [m
[31m-			setSelectedSuggestionIndex(-1);[m
[31m-			setSelectedSuggestionScroll(false);[m
[32m+[m			[32msetSelectedSuggestionIndex( -1 );[m
[32m+[m			[32msetSelectedSuggestionScroll( false );[m
 		}[m
 	}[m
 [m
[31m-	function onKeyDown(event: KeyboardEvent) {[m
[32m+[m	[32mfunction onKeyDown( event: KeyboardEvent ) {[m
 		let preventDefault = false;[m
 [m
[31m-		if (event.defaultPrevented) {[m
[32m+[m		[32mif ( event.defaultPrevented ) {[m
 			return;[m
 		}[m
[31m-		switch (event.key) {[m
[32m+[m		[32mswitch ( event.key ) {[m
 			case 'Backspace':[m
[31m-				preventDefault = handleDeleteKey(deleteTokenBeforeInput);[m
[32m+[m				[32mpreventDefault = handleDeleteKey( deleteTokenBeforeInput );[m
 				break;[m
 			case 'Enter':[m
 				preventDefault = addCurrentToken();[m
[36m@@ -234,32 +244,32 @@[m [mexport function FormTokenField(props: FormTokenFieldProps) {[m
 				preventDefault = handleDownArrowKey();[m
 				break;[m
 			case 'Delete':[m
[31m-				preventDefault = handleDeleteKey(deleteTokenAfterInput);[m
[32m+[m				[32mpreventDefault = handleDeleteKey( deleteTokenAfterInput );[m
 				break;[m
 			case 'Space':[m
[31m-				if (tokenizeOnSpace) {[m
[32m+[m				[32mif ( tokenizeOnSpace ) {[m
 					preventDefault = addCurrentToken();[m
 				}[m
 				break;[m
 			case 'Escape':[m
[31m-				preventDefault = handleEscapeKey(event);[m
[32m+[m				[32mpreventDefault = handleEscapeKey( event );[m
 				break;[m
 			case 'Tab':[m
[31m-				preventDefault = handleTabKey(event);[m
[32m+[m				[32mpreventDefault = handleTabKey( event );[m
 				break;[m
 			default:[m
 				break;[m
 		}[m
 [m
[31m-		if (preventDefault) {[m
[32m+[m		[32mif ( preventDefault ) {[m
 			event.preventDefault();[m
 		}[m
 	}[m
 [m
[31m-	function onKeyPress(event: KeyboardEvent) {[m
[32m+[m	[32mfunction onKeyPress( event: KeyboardEvent ) {[m
 		let preventDefault = false;[m
 [m
[31m-		switch (event.key) {[m
[32m+[m		[32mswitch ( event.key ) {[m
 			case ',':[m
 				preventDefault = handleCommaKey();[m
 				break;[m
[36m@@ -267,53 +277,53 @@[m [mexport function FormTokenField(props: FormTokenFieldProps) {[m
 				break;[m
 		}[m
 [m
[31m-		if (preventDefault) {[m
[32m+[m		[32mif ( preventDefault ) {[m
 			event.preventDefault();[m
 		}[m
 	}[m
 [m
[31m-	function onContainerTouched(event: MouseEvent | TouchEvent) {[m
[32m+[m	[32mfunction onContainerTouched( event: MouseEvent | TouchEvent ) {[m
 		// Prevent clicking/touching the tokensAndInput container from blurring[m
 		// the input and adding the current token.[m
[31m-		if (event.target === tokensAndInput.current && isActive) {[m
[32m+[m		[32mif ( event.target === tokensAndInput.current && isActive ) {[m
 			event.preventDefault();[m
 		}[m
 	}[m
 [m
[31m-	function onTokenClickRemove(event: { value: string }) {[m
[31m-		deleteToken(event.value);[m
[32m+[m	[32mfunction onTokenClickRemove( event: { value: string } ) {[m
[32m+[m		[32mdeleteToken( event.value );[m
 		focus();[m
 	}[m
 [m
[31m-	function onSuggestionHovered(suggestion: string) {[m
[31m-		const index = getMatchingSuggestions().indexOf(suggestion);[m
[32m+[m	[32mfunction onSuggestionHovered( suggestion: string ) {[m
[32m+[m		[32mconst index = getMatchingSuggestions().indexOf( suggestion );[m
 [m
[31m-		if (index >= 0) {[m
[31m-			setSelectedSuggestionIndex(index);[m
[31m-			setSelectedSuggestionScroll(false);[m
[32m+[m		[32mif ( index >= 0 ) {[m
[32m+[m			[32msetSelectedSuggestionIndex( index );[m
[32m+[m			[32msetSelectedSuggestionScroll( false );[m
 		}[m
 	}[m
 [m
[31m-	function onSuggestionSelected(suggestion: string) {[m
[31m-		addNewToken(suggestion);[m
[32m+[m	[32mfunction onSuggestionSelected( suggestion: string ) {[m
[32m+[m		[32maddNewToken( suggestion );[m
 	}[m
 [m
[31m-	function onInputChangeHandler(event: { value: string }) {[m
[32m+[m	[32mfunction onInputChangeHandler( event: { value: string } ) {[m
 		const text = event.value;[m
 		const separator = tokenizeOnSpace ? /[ ,\t]+/ : /[,\t]+/;[m
[31m-		const items = text.split(separator);[m
[31m-		const tokenValue = items[items.length - 1] || '';[m
[32m+[m		[32mconst items = text.split( separator );[m
[32m+[m		[32mconst tokenValue = items[ items.length - 1 ] || '';[m
 [m
[31m-		if (items.length > 1) {[m
[31m-			addNewTokens(items.slice(0, -1));[m
[32m+[m		[32mif ( items.length > 1 ) {[m
[32m+[m			[32maddNewTokens( items.slice( 0, -1 ) );[m
 		}[m
[31m-		setIncompleteTokenValue(tokenValue);[m
[31m-		onInputChange(tokenValue);[m
[32m+[m		[32msetIncompleteTokenValue( tokenValue );[m
[32m+[m		[32monInputChange( tokenValue );[m
 	}[m
 [m
[31m-	function handleDeleteKey(_deleteToken: () => void) {[m
[32m+[m	[32mfunction handleDeleteKey( _deleteToken: () => void ) {[m
 		let preventDefault = false;[m
[31m-		if (hasFocus() && isInputEmpty()) {[m
[32m+[m		[32mif ( hasFocus() && isInputEmpty() ) {[m
 			_deleteToken();[m
 			preventDefault = true;[m
 		}[m
[36m@@ -323,7 +333,7 @@[m [mexport function FormTokenField(props: FormTokenFieldProps) {[m
 [m
 	function handleLeftArrowKey() {[m
 		let preventDefault = false;[m
[31m-		if (isInputEmpty()) {[m
[32m+[m		[32mif ( isInputEmpty() ) {[m
 			moveInputBeforePreviousToken();[m
 			preventDefault = true;[m
 		}[m
[36m@@ -333,7 +343,7 @@[m [mexport function FormTokenField(props: FormTokenFieldProps) {[m
 [m
 	function handleRightArrowKey() {[m
 		let preventDefault = false;[m
[31m-		if (isInputEmpty()) {[m
[32m+[m		[32mif ( isInputEmpty() ) {[m
 			moveInputAfterNextToken();[m
 			preventDefault = true;[m
 		}[m
[36m@@ -342,28 +352,28 @@[m [mexport function FormTokenField(props: FormTokenFieldProps) {[m
 	}[m
 [m
 	function handleUpArrowKey() {[m
[31m-		setSelectedSuggestionIndex((index) => {[m
[32m+[m		[32msetSelectedSuggestionIndex( ( index ) => {[m
 			return ([m
[31m-				(index === 0[m
[32m+[m				[32m( index === 0[m
 					? getMatchingSuggestions([m
[31m-						incompleteTokenValue,[m
[31m-						suggestions,[m
[31m-						value,[m
[31m-						maxSuggestions,[m
[31m-						saveTransform[m
[31m-					).length[m
[31m-					: index) - 1[m
[32m+[m							[32mincompleteTokenValue,[m
[32m+[m							[32msuggestions,[m
[32m+[m							[32mvalue,[m
[32m+[m							[32mmaxSuggestions,[m
[32m+[m							[32msaveTransform[m
[32m+[m					[32m  ).length[m
[32m+[m					[32m: index ) - 1[m
 			);[m
[31m-		});[m
[31m-		setSelectedSuggestionScroll(true);[m
[32m+[m		[32m} );[m
[32m+[m		[32msetSelectedSuggestionScroll( true );[m
 [m
 		return true; // PreventDefault.[m
 	}[m
 [m
 	function handleDownArrowKey() {[m
[31m-		setSelectedSuggestionIndex((index) => {[m
[32m+[m		[32msetSelectedSuggestionIndex( ( index ) => {[m
 			return ([m
[31m-				(index + 1) %[m
[32m+[m				[32m( index + 1 ) %[m
 				getMatchingSuggestions([m
 					incompleteTokenValue,[m
 					suggestions,[m
[36m@@ -372,70 +382,70 @@[m [mexport function FormTokenField(props: FormTokenFieldProps) {[m
 					saveTransform[m
 				).length[m
 			);[m
[31m-		});[m
[32m+[m		[32m} );[m
 [m
[31m-		setSelectedSuggestionScroll(true);[m
[32m+[m		[32msetSelectedSuggestionScroll( true );[m
 		return true; // PreventDefault.[m
 	}[m
 [m
[31m-	function collapseSuggestionsList(event: KeyboardEvent) {[m
[31m-		if (event.target instanceof HTMLInputElement) {[m
[31m-			setIncompleteTokenValue(event.target.value);[m
[31m-			setIsExpanded(false);[m
[31m-			setSelectedSuggestionIndex(-1);[m
[31m-			setSelectedSuggestionScroll(false);[m
[32m+[m	[32mfunction collapseSuggestionsList( event: KeyboardEvent ) {[m
[32m+[m		[32mif ( event.target instanceof HTMLInputElement ) {[m
[32m+[m			[32msetIncompleteTokenValue( event.target.value );[m
[32m+[m			[32msetIsExpanded( false );[m
[32m+[m			[32msetSelectedSuggestionIndex( -1 );[m
[32m+[m			[32msetSelectedSuggestionScroll( false );[m
 		}[m
 	}[m
 [m
[31m-	function handleEscapeKey(event: KeyboardEvent) {[m
[31m-		collapseSuggestionsList(event);[m
[32m+[m	[32mfunction handleEscapeKey( event: KeyboardEvent ) {[m
[32m+[m		[32mcollapseSuggestionsList( event );[m
 		return true; // PreventDefault.[m
 	}[m
 [m
[31m-	function handleTabKey(event: KeyboardEvent) {[m
[31m-		collapseSuggestionsList(event);[m
[32m+[m	[32mfunction handleTabKey( event: KeyboardEvent ) {[m
[32m+[m		[32mcollapseSuggestionsList( event );[m
 		return false; // Do not prevent the default behavior.[m
 	}[m
 [m
 	function handleCommaKey() {[m
[31m-		if (inputHasValidValue()) {[m
[31m-			addNewToken(incompleteTokenValue);[m
[32m+[m		[32mif ( inputHasValidValue() ) {[m
[32m+[m			[32maddNewToken( incompleteTokenValue );[m
 		}[m
 [m
 		return true; // PreventDefault.[m
 	}[m
 [m
[31m-	function moveInputToIndex(index: number) {[m
[31m-		setInputOffsetFromEnd(value.length - Math.max(index, -1) - 1);[m
[32m+[m	[32mfunction moveInputToIndex( index: number ) {[m
[32m+[m		[32msetInputOffsetFromEnd( value.length - Math.max( index, -1 ) - 1 );[m
 	}[m
 [m
 	function moveInputBeforePreviousToken() {[m
[31m-		setInputOffsetFromEnd((prevInputOffsetFromEnd) => {[m
[31m-			return Math.min(prevInputOffsetFromEnd + 1, value.length);[m
[31m-		});[m
[32m+[m		[32msetInputOffsetFromEnd( ( prevInputOffsetFromEnd ) => {[m
[32m+[m			[32mreturn Math.min( prevInputOffsetFromEnd + 1, value.length );[m
[32m+[m		[32m} );[m
 	}[m
 [m
 	function moveInputAfterNextToken() {[m
[31m-		setInputOffsetFromEnd((prevInputOffsetFromEnd) => {[m
[31m-			return Math.max(prevInputOffsetFromEnd - 1, 0);[m
[31m-		});[m
[32m+[m		[32msetInputOffsetFromEnd( ( prevInputOffsetFromEnd ) => {[m
[32m+[m			[32mreturn Math.max( prevInputOffsetFromEnd - 1, 0 );[m
[32m+[m		[32m} );[m
 	}[m
 [m
 	function deleteTokenBeforeInput() {[m
 		const index = getIndexOfInput() - 1;[m
 [m
[31m-		if (index > -1) {[m
[31m-			deleteToken(value[index]);[m
[32m+[m		[32mif ( index > -1 ) {[m
[32m+[m			[32mdeleteToken( value[ index ] );[m
 		}[m
 	}[m
 [m
 	function deleteTokenAfterInput() {[m
 		const index = getIndexOfInput();[m
 [m
[31m-		if (index < value.length) {[m
[31m-			deleteToken(value[index]);[m
[32m+[m		[32mif ( index < value.length ) {[m
[32m+[m			[32mdeleteToken( value[ index ] );[m
 			// Update input offset since it's the offset from the last token.[m
[31m-			moveInputToIndex(index);[m
[32m+[m			[32mmoveInputToIndex( index );[m
 		}[m
 	}[m
 [m
[36m@@ -443,80 +453,80 @@[m [mexport function FormTokenField(props: FormTokenFieldProps) {[m
 		let preventDefault = false;[m
 		const selectedSuggestion = getSelectedSuggestion();[m
 [m
[31m-		if (selectedSuggestion) {[m
[31m-			addNewToken(selectedSuggestion);[m
[32m+[m		[32mif ( selectedSuggestion ) {[m
[32m+[m			[32maddNewToken( selectedSuggestion );[m
 			preventDefault = true;[m
[31m-		} else if (inputHasValidValue()) {[m
[31m-			addNewToken(incompleteTokenValue);[m
[32m+[m		[32m} else if ( inputHasValidValue() ) {[m
[32m+[m			[32maddNewToken( incompleteTokenValue );[m
 			preventDefault = true;[m
 		}[m
 [m
 		return preventDefault;[m
 	}[m
 [m
[31m-	function addNewTokens(tokens: string[]) {[m
[32m+[m	[32mfunction addNewTokens( tokens: string[] ) {[m
 		const tokensToAdd = [[m
 			...new Set([m
 				tokens[m
[31m-					.map(saveTransform)[m
[31m-					.filter(Boolean)[m
[31m-					.filter((token) => !valueContainsToken(token))[m
[32m+[m					[32m.map( saveTransform )[m
[32m+[m					[32m.filter( Boolean )[m
[32m+[m					[32m.filter( ( token ) => ! valueContainsToken( token ) )[m
 			),[m
 		];[m
 [m
[31m-		if (tokensToAdd.length > 0) {[m
[31m-			const newValue = [...value];[m
[31m-			newValue.splice(getIndexOfInput(), 0, ...tokensToAdd);[m
[31m-			onChange(newValue);[m
[32m+[m		[32mif ( tokensToAdd.length > 0 ) {[m
[32m+[m			[32mconst newValue = [ ...value ];[m
[32m+[m			[32mnewValue.splice( getIndexOfInput(), 0, ...tokensToAdd );[m
[32m+[m			[32monChange( newValue );[m
 		}[m
 	}[m
 [m
[31m-	async function addNewToken(token: string) {[m
[31m-		setAsyncError(null);[m
[32m+[m	[32masync function addNewToken( token: string ) {[m
[32m+[m		[32msetAsyncError( null );[m
 [m
[31m-		// If __experimentalValidateInput is async, await it[m
[31m-		if (__experimentalValidateInput.constructor.name === 'AsyncFunction') {[m
[31m-			setIsValidating(true);[m
[31m-			const isValid = await __experimentalValidateInput(token);[m
[31m-			setIsValidating(false);[m
[32m+[m		[32mif ([m
[32m+[m			[32m__experimentalValidateInput.constructor.name === 'AsyncFunction'[m
[32m+[m		[32m) {[m
[32m+[m			[32msetIsValidating( true ); // show loading state[m
[32m+[m			[32mlet isValid = false;[m
 [m
[31m-			if (!isValid) {[m
[31m-				setAsyncError(messages.__experimentalInvalid);[m
[31m-				speak(messages.__experimentalInvalid, 'assertive');[m
[31m-				return;[m
[32m+[m			[32mtry {[m
[32m+[m				[32misValid