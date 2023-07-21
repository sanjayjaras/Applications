import { ElementRef } from '@angular/core';
import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
export declare class PromptModalComponent {
    private modalInstance;
    value: string;
    password: boolean;
    input: ElementRef;
    constructor(modalInstance: NgbActiveModal);
    ngOnInit(): void;
    ok(): void;
    cancel(): void;
}
